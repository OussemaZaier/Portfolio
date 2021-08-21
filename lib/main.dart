import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:particles_flutter/particles_flutter.dart';
import 'package:portfolio/responsive.dart';

import 'widgets/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Med Oussema Zaier-Portfolio',
      theme: ThemeData(
        primaryColor: Color(0xFFB86FEB),
        accentColor: Color.fromARGB(255, 197, 194, 237),
        backgroundColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 15,
          ),
          headline2: TextStyle(
            fontFamily: 'volkhov',
          ),
          headline3: TextStyle(
            fontFamily: 'brawler',
          ),
          bodyText1: TextStyle(
            fontFamily: 'junge',
          ),
        ),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ScrollController _scrollViewController;
  bool _showAppbar = true;
  bool isScrollingDown = false;
  @override
  void dispose() {
    _scrollViewController.dispose();
    _scrollViewController.removeListener(() {});
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // var containerHeight = screenSize.width * 1 / 3;
    var containerHeight = screenSize.height - 200;
    var containerWidth = screenSize.width;
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              backgroundColor: Color.fromARGB(200, 140, 88, 249),
              iconTheme: IconThemeData(color: Theme.of(context).accentColor),
            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, _showAppbar ? 61 : 0),
              child: TopBar(),
            ),
      drawer: MenuDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _scrollViewController,
          child: Column(
            children: [
              Container(
                width: containerWidth,
                height: ResponsiveWidget.isSmallScreen(context)
                    ? containerHeight / 2
                    : containerHeight,
                child: Stack(
                  children: [
                    CustomPaint(
                      painter: InclinedLine(),
                      child: CircularParticle(
                        width: containerWidth,
                        height: containerHeight,
                        awayRadius: containerHeight / 5,
                        numberOfParticles: 150,
                        speedOfParticles: 1.5,
                        maxParticleSize: 7,
                        particleColor: Colors.white.withOpacity(.7),
                        awayAnimationDuration: Duration(milliseconds: 600),
                        awayAnimationCurve: Curves.easeInOutBack,
                        onTapAnimation: false,
                        isRandSize: true,
                        isRandomColor: false,
                        connectDots: true,
                        enableHover: true,
                        hoverColor: Colors.black,
                        hoverRadius: 80,
                      ),
                    ),
                    CustomPaint(
                      size: Size(containerWidth, containerHeight),
                      painter: InclinedLine2(),
                    ),
                    Home(),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: CircleAvatar(
                          radius: 2 * (containerWidth / 15),
                          backgroundColor: Theme.of(context).backgroundColor,
                          backgroundImage: AssetImage('images/me.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: containerWidth,
                height: containerHeight / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/gradient1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Do what you love, Love what you do!',
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .apply(color: Colors.white, fontSizeDelta: 25),
                  ),
                ),
              ),
              Container(
                width: containerWidth,
                height: containerHeight,
                color: Colors.white,
              ),
              Container(
                width: containerWidth,
                height: containerHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/gradient1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: containerWidth,
                height: containerHeight,
                color: Colors.white,
              ),
              Container(
                width: containerWidth,
                height: containerHeight / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/gradient1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InclinedLine extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 197, 194, 237)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7916667, 0);
    path_0.lineTo(size.width * 0.9583333, 0);
    path_0.lineTo(size.width * 0.8750000, size.height);
    path_0.lineTo(size.width * 0.7083333, size.height);
    path_0.lineTo(size.width * 0.7916667, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class InclinedLine2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width * 0.7916667, 0);
    path_0.lineTo(size.width * 0.7083333, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = new Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_1 = Path();
    path_1.moveTo(size.width, 0);
    path_1.lineTo(size.width * 0.9583333, 0);
    path_1.lineTo(size.width * 0.8750000, size.height);
    path_1.lineTo(size.width, size.height);
    path_1.lineTo(size.width, 0);
    path_1.close();

    canvas.drawPath(path_1, paint_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
//body: LiteRollingSwitch(
    //   //initial value
    //   value: true,
    //   textOn: 'disponible',
    //   textOff: 'ocupado',
    //   colorOn: Colors.black,
    //   colorOff: Colors.white,
    //   iconOn: Icons.crop_sharp,
    //   iconOff: Icons.remove_circle_outline,
    //   textSize: 16.0,
    //   onChanged: (bool state) {
    //     //Use it to manage the different states
    //     print('Current State of SWITCH IS: $state');
    //   },
    // ));