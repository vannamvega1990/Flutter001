import 'package:flutter/material.dart';
// import 'package:oms/login.dart';
// import 'package:oms/register.dart';
// import 'package:oms/resetpass.dart';

import 'login.dart';
import 'register.dart';
import 'resetpass.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      title: 'OMS',
      routes: {
        'login': (context) => myLogin(),
        'register': (context) => myRegister(),
        'forgot': (context) => resetPassword(),
      },
    );
  }
}