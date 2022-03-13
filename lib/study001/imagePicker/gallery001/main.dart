import 'package:flutter/material.dart';

import 'camera_widget.dart';

void main() {
  runApp(MaterialApp(
    title: "Pick Image Camera",
    home: CameraWidget(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: CameraWidget(),
    );
  }
}
