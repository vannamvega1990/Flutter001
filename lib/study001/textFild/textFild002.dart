import 'package:flutter/material.dart';
 
class textFild002 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
           appBar: AppBar(title: Text('Get Text Field Value')),
            body: Center(
              child: CheckTextField()
              )
            )
          );
  }
}
 
class CheckTextField extends StatefulWidget {
 
  CheckTextFieldWidget createState() => CheckTextFieldWidget();
 
}
 
class CheckTextFieldWidget extends State {
 
  final textController_1 = TextEditingController();
  final textController_2 = TextEditingController();
  final textController_3 = TextEditingController();
 
 
  checkTextFieldEmptyOrNot(){
 
    // Creating 3 String Variables.
    String text1,text2,text3 ;
 
    // Getting Value From Text Field and Store into String Variable
    text1 = textController_1.text ;
    text2 = textController_2.text ;
    text3 = textController_3.text ;
 
    // Checking all TextFields.
    if(text1 == '' || text2 == '' || text3 == '')
    {
      // Put your code here which you want to execute when Text Field is Empty.
      print('Text Field is empty, Please Fill All Data');
 
    }else{
 
      // Put your code here, which you want to execute when Text Field is NOT Empty.
      print('Not Empty, All Text Input is Filled.');
    }
    
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
 
             Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: textController_1,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Enter First Name'),
                )
              ),
 
              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: textController_2,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Enter Last Name'),
                )
              ),
 
              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: textController_3,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Enter Address'),
                )
              ),
 
              RaisedButton(
                onPressed: checkTextFieldEmptyOrNot,
                color: Colors.purple,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Click Here To Check TextField is Empty or Not'),
              ),
 
            ],
          ),
        ));
  }
}