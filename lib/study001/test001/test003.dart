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
      home: const Noidung(),
    );
  }
}

class Noidung extends StatefulWidget {
  const Noidung({Key? key}) : super(key: key);

  @override
  State<Noidung> createState() => _NoidungState();
}

class _NoidungState extends State<Noidung> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customWidget(context),
    );
  }

  void click() {}

  Widget customWidget(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.yellow,
        height: 560,
        width: 760,
        // alignment: Alignment.center,
        // padding: EdgeInsets.all(50),
        decoration: BoxDecoration(
            color: Colors.yellow.withAlpha(118),
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "man hinh dang nhap",
              // textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red, inherit: false),
            ),
            SizedBox(
              height: 26,
            ),
            Card(
              child: Container(
                // height: double.infinity,
                width: 260,
                // color: Colors.grey,
                padding: EdgeInsets.all(12),
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                        decoration: InputDecoration(
                      labelText: "username",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.red,
                      ),
                    )),
                    SizedBox(
                      height: 12,
                      width: 96,
                    ),
                    TextField(
                        decoration: InputDecoration(
                      labelText: "password",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.password,
                        color: Colors.red,
                      ),
                    )),
                    SizedBox(
                      height: 12,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: SizedBox(
                        height: 60,
                        child: Center(
                          child: Text(
                            'dang nhap',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
