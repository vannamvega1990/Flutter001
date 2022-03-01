
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Vidu002 extends StatelessWidget {
  _launchNativeApps(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(227, 234, 237, 1),
        appBar: AppBar(
          title: Text(
            'Portfolio',
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              SizedBox(height: 30),
              CircleAvatar(
                radius: 100,
                backgroundColor: Theme.of(context).primaryColor,
                child: CircleAvatar(
                  radius: 95,
                  backgroundColor: Colors.white70,
                  backgroundImage:
                      NetworkImage('https://i.ibb.co/n3RzK2L/shashank.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Shashank Biplav',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Divider(),
              ),
              Text(
                'SOFTWARE ENGINEER & TECH BLOGGER',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Hello, I am Shashank Biplav a Full-Stack developer based in India specializing in building apps for Mobile and the Web.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  onPressed: () {
                    _launchNativeApps(
                        'https://shashankbiplav.com');
                  },
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person_outline_rounded,
                          size: 30,
                          color: Colors.blue[800],
                        ),
                        Text(
                          'Website',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  onPressed: () {
                    _launchNativeApps('tel:+917004026852');
                  },
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.wifi_calling_rounded,
                          size: 30,
                          color: Colors.greenAccent[700],
                        ),
                        SizedBox(width: 20),
                        Text(
                          '+91- 700-402-6852',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  onPressed: () {
                    _launchNativeApps(
                        'mailto:biplavshashank7@gmail.com?subject=I would like to build an app with you!&body=Hi there,\n I have an awesome app idea,\n\n');
                  },
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.email_rounded,
                          size: 30,
                          color: Colors.red[800],
                        ),
                        Text(
                          'biplavshashank7@gmail.com',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}