import 'package:flutter/material.dart';

import './secondScreen.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/first-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20, width: double.infinity,),
          Text('This is the First Screen'),
          SizedBox(height: 20),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(SecondScreen.routeName);
            },
            child: Text('GO TO SECOND SCREEN'),
          ),
        ],
      ),
    );
  }
}