import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  final List<bool> _isHovering = [false, false, false, false];
  final List<String> _names = ['HOME', 'SKILLS', 'EXPERIENCE', 'CONTACT'];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[0] = true : _isHovering[0] = false;
                    });
                  },
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _names[0],
                        style: Theme.of(context).textTheme.headline1!.apply(
                              color: !_isHovering[0]
                                  ? Color(0xA8B86FEB)
                                  : Color(0xFFB86FEB),
                            ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: _isHovering[0] == false,
                        child: Container(
                          width: 8,
                          height: 8,
                        ),
                      ),
                      Visibility(
                        visible: _isHovering[0],
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFB86FEB),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[1] = true : _isHovering[1] = false;
                    });
                  },
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _names[1],
                        style: Theme.of(context).textTheme.headline1!.apply(
                              color: !_isHovering[1]
                                  ? Color(0xA8B86FEB)
                                  : Color(0xFFB86FEB),
                            ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: _isHovering[1] == false,
                        child: Container(
                          width: 8,
                          height: 8,
                        ),
                      ),
                      Visibility(
                        visible: _isHovering[1],
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFB86FEB),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[2] = true : _isHovering[2] = false;
                    });
                  },
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _names[2],
                        style: Theme.of(context).textTheme.headline1!.apply(
                              color: !_isHovering[2]
                                  ? Color(0xA8B86FEB)
                                  : Color(0xFFB86FEB),
                            ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: _isHovering[2] == false,
                        child: Container(
                          width: 8,
                          height: 8,
                        ),
                      ),
                      Visibility(
                        visible: _isHovering[2],
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFB86FEB),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onHover: (value) {
                    setState(() {
                      value ? _isHovering[3] = true : _isHovering[3] = false;
                    });
                  },
                  onTap: () {},
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _names[3],
                        style: Theme.of(context).textTheme.headline1!.apply(
                              color: !_isHovering[3]
                                  ? Color(0xA8B86FEB)
                                  : Color(0xFFB86FEB),
                            ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Visibility(
                        visible: _isHovering[3] == false,
                        child: Container(
                          width: 8,
                          height: 8,
                        ),
                      ),
                      Visibility(
                        visible: _isHovering[3],
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFB86FEB),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 6,
                )
              ],
            ),
          ),
          Divider(
            height: 10,
            color: Theme.of(context).primaryColor,
            thickness: 5,
          )
        ],
      ),
    );
  }
}
