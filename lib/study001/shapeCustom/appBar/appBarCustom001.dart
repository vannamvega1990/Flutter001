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
      home: page(),
    );
  }
}

class page extends StatefulWidget {
  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.purple,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                ),
                color: Colors.white,
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Stack(children: <Widget>[
            Container(
              color: Colors.purple,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(),
                      child: Container(
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.purple,
                            shape: BoxShape.circle),
                        child: CircleAvatar(
                          backgroundColor: Colors.purple,
                          radius: 70,
                        ),
                      )),
                  Column(
                    children: <Widget>[
                      Text(
                        "Ahmed-AlKheerow",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("ID:93956")
                    ],
                  )
                ])
          ])
        ])));
  }
}
