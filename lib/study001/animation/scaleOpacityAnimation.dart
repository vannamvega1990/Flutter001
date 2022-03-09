import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyAnimationApp());

class MyAnimationApp extends StatefulWidget {
  @override
  _MyAnimationAppState createState() => _MyAnimationAppState();
}

class _MyAnimationAppState extends State<MyAnimationApp>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;
  double _opacity = 1;

  @override
  void initState() {
    super.initState();

    _controller =
        new AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat();
    animation = new CurvedAnimation(parent: _controller, curve: Curves.linear);
    _controller.addListener(() {
      setState(() {
        _opacity = 1 - _controller.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Container(
          child: new Center(
            child: new ScaleTransition(
              scale: animation,
              child: Opacity(
                opacity: _opacity,
                child: new Container(
                  decoration: new BoxDecoration(
                      color: Color(0XFFEC3457), shape: BoxShape.circle),
                  height: 90.0,
                  width: 90.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
