import 'package:flutter/material.dart';

import './firstScreen.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = '/second-screen';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20, width: double.infinity,),
          Text('This is the second screen!'),
          SizedBox(height: 20),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(FirstScreen.routeName);
            },
            child: Text('BACK TO FIRST SCREEN'),
          ),
          FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('BACK USING POP METHOD'),
          ),
        ],
      ),
    );
  }
}