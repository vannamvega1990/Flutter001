import 'package:flutter/material.dart';
import 'package:henho001/views/homeView.dart';

class registerView extends StatelessWidget {
  const registerView({Key? key}) : super(key: key);
  static const routeName = '/registerView';

  @override
  Widget build(BuildContext context) {
    return registerViewPage();
  }
}

class registerViewPage extends StatefulWidget {
  const registerViewPage({Key? key}) : super(key: key);

  @override
  State<registerViewPage> createState() => _registerViewState();
}

class _registerViewState extends State<registerViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(26),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Colors.purpleAccent,
              Colors.amber,
              Colors.blue,
            ])),
        child: SingleChildScrollView(
          child: Container(
            // width: 325,
            // height: 470,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Hello",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Please Login to Your Account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 260,
                  height: 60,
                  child: const TextField(
                    decoration: InputDecoration(
                        suffix: Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                        labelText: "Email Address",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: 260,
                  height: 60,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffix: Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: null,
                        child: const Text(
                          "Forget Password",
                          style: TextStyle(color: Colors.deepOrange),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTapUp: (details) {
                    print(123);
                    Navigator.of(context).pushNamed(homeView.routeName);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 250,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF8A2387),
                              Color(0xFFE94057),
                              Color(0xFFF27121),
                            ])),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                const Text(
                  "Or Login using Social Media Account",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: const Icon(Icons.facebook, color: Colors.blue)),
                    IconButton(
                        onPressed: null,
                        icon: const Icon(
                          Icons.email,
                          color: Colors.redAccent,
                        )),
                    IconButton(
                        onPressed: null,
                        icon: const Icon(
                          Icons.email,
                          color: Colors.orangeAccent,
                        )),
                    IconButton(
                        onPressed: null,
                        icon: const Icon(
                          Icons.email,
                          color: Colors.green,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
