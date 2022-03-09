import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Popup Menu Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey btnKey = GlobalKey();
  GlobalKey btnKey2 = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('noi dung'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.yellow,
        leading: IconButton(
            onPressed: () {
              print('123');
              showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 126,
                      width: 126,
                      color: Colors.red,
                      padding: EdgeInsets.all(18),
                      child: Text('123'),
                    );
                  });
            },
            icon: Text('next')),
      ),
    );
  }
}
