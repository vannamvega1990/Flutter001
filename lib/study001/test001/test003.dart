import 'package:flutter/material.dart';

class Test003 extends StatelessWidget {
  const Test003({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: customWidget(context),
    );
  }

  Widget customWidget(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 60,
              width: 160,
              color: Colors.red,
              child: Text(
                '123',
                style: TextStyle(color: Colors.green),
              )),
          SizedBox(
            height: 60,
          ),
          Text('123'),
          TextField(),
        ],
      ),
    );
  }
}
