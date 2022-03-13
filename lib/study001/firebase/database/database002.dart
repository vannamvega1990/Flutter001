// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb;
import 'package:flutter/material.dart';

// Change to false to use live database instance.
const USE_DATABASE_EMULATOR = true;
// The port we've set the Firebase Database emulator to run on via the
// `firebase.json` configuration file.
const emulatorPort = 9000;
// Android device emulators consider localhost of the host machine as 10.0.2.2
// so let's use that if running on Android.
final emulatorHost =
    (!kIsWeb && defaultTargetPlatform == TargetPlatform.android)
        ? '10.0.2.2'
        : 'localhost';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '123',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late DatabaseReference _counterRef;
  late DatabaseReference _messagesRef;
  late StreamSubscription<DatabaseEvent> _counterSubscription;
  late StreamSubscription<DatabaseEvent> _messagesSubscription;
  bool _anchorToBottom = false;

  String _kTestKey = 'Hello';
  String _kTestValue = 'world!';
  FirebaseException? _error;
  bool initialized = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _messagesSubscription.cancel();
    _counterSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(children: [
        Text('123'),
        IconButton(
            onPressed: () async {
              final ref = FirebaseDatabase.instance.ref();
// final snapshot = await ref.child('users/$userId').get();
              final snapshot = await ref.child('users/123').get();
              if (snapshot.exists) {
                print(snapshot.value);
              } else {
                print('No data available.');
              }
            },
            icon: Icon(Icons.phone)),
        IconButton(
            onPressed: () async {
              // DatabaseReference ref = FirebaseDatabase.instance.ref();
              DatabaseReference ref =
                  FirebaseDatabase.instance.ref("users/123");

              await ref.set({
                "name": "John",
                "age": 18,
                "address": {"line1": "100 Mountain View"}
              });
            },
            icon: Icon(Icons.email)),
      ])),
    );
  }
}
