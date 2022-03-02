import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Test001 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        backgroundColor: Color.fromRGBO(227, 234, 237, 1),
        
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
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Divider(
                  height: 0,color: Colors.amber,
                ),
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
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  onPressed: (){},
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person_outline_rounded,
                          size: 30,
                          color: Colors.blue[500],
                        ),
                        Text(
                          'nguyen van nam',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey[700],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  onPressed: (){},
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
                        Text(
                          '+84-096567-236',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey[700],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  onPressed: (){},
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
                          'kinhdoanhonline@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey[700],
                          ),
                        )
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