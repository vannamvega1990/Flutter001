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
    // return Scaffold(
    //   body: customWidget(context),
    // );
    return Scaffold(
        appBar: AppBar(title: Text("")),
        body: Container(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final firstHeight = constraints.biggest.height * .3;
              final secondHeight = 200.0;

              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: firstHeight + secondHeight / 2,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            height: firstHeight,
                            left: 0,
                            right: 0,
                            child: Container(
                              color: Colors.blue,
                            ),
                          ),
                          Positioned(
                            top: firstHeight - secondHeight / 2,
                            left: 0,
                            height: secondHeight,
                            child: Container(
                              width: 200,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.only(
                        bottom: 8,
                      ),
                      color: Colors.green,
                    ),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.only(
                        bottom: 8,
                      ),
                      color: Colors.green,
                    ),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.only(
                        bottom: 8,
                      ),
                      color: Colors.green,
                    ),
                    Container(
                      height: 200,
                      margin: const EdgeInsets.only(
                        bottom: 8,
                      ),
                      color: Colors.green,
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}

Widget customWidget(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(180),
    alignment: Alignment.bottomCenter,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: <Color>[
          Color.fromARGB(255, 179, 14, 14).withAlpha(0),
          Color.fromARGB(31, 181, 190, 55),
          Color.fromARGB(115, 104, 8, 8)
        ],
      ),
    ),
    child: Container(
      color: Colors.red,
      margin: EdgeInsets.only(bottom: 96),
      padding: EdgeInsets.all(26),
      child: Text(
        "Foreground Text",
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    ),
  );
}
