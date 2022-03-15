import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Round AppBar')),
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        actions: [Icon(Icons.dehaze_sharp)],
      ),
      body: SafeArea(
          child: Column(
        children: [
          ClipPath(
            clipper: RoundShape(),
            child: Container(
              height: 40,
              color: Colors.lightGreen,
            ),
          ),
          Center(
            child: Text('Body'),
          ),
        ],
      )),
    );
  }
}

class RoundShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    double curveHeight = size.height / 2;
    var p = Path();
    p.lineTo(0, height - curveHeight);
    p.quadraticBezierTo(width / 2, height, width, height - curveHeight);
    p.lineTo(width, 0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}

class RoundAppBar extends StatelessWidget with PreferredSizeWidget {
  final double barHeight = 50;
  final String title;
  RoundAppBar({Key? key, required this.title}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + barHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(title)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(48.0),
        ),
      ),
      actions: [Icon(Icons.dehaze)],
    );
  }
}
