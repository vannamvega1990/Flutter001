import 'package:flutter/material.dart';
// import 'package:flutter_001/study001/textFild/textFild002.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: build1(context),
    );
  }

  Widget build1(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        children: <Widget>[
          Flexible(
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.deepOrange,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Column(
              children: <Widget>[
                Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.orange,
                    )),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 2,
                          child: Container(
                            color: Colors.blue,
                          )),
                      Flexible(child: Container(color: Colors.green))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
