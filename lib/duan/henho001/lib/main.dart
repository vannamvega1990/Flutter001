import 'package:flutter/material.dart';
import 'package:henho001/views/chatView/chatView.dart';
import 'package:henho001/views/homeView.dart';
import 'package:henho001/views/registerView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: registerView(),
      routes: {
        registerView.routeName: (context) => registerView(),
        homeView.routeName: (context) => homeView(),
        chatView.routeName: (context) => chatView(),
      },
    );
  }
}
