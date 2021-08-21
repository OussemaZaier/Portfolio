import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: 10,
      child: Text(
        "data",
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
