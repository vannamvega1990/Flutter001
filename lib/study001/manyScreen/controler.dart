import 'package:flutter/material.dart';

//screens
import 'firstScreen.dart';
import 'secondScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstScreen(),
      routes: {
        FirstScreen.routeName: (ctx) => FirstScreen(),
        SecondScreen.routeName: (ctx) => SecondScreen(),
      },
    );
  }
}
