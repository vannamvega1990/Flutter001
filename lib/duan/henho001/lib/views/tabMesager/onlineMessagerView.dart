import 'package:flutter/material.dart';
import 'package:henho001/views/chatView/chatView.dart';

class onlineMessagerView extends StatefulWidget {
  const onlineMessagerView({Key? key}) : super(key: key);

  @override
  State<onlineMessagerView> createState() => _onlineMessagerViewState();
}

class _onlineMessagerViewState extends State<onlineMessagerView> {
  List<String> persions = [
    'Dog',
    'Cat',
    'Rabbit',
    'Dog',
    'Cat',
    'Rabbit',
    'Dog',
    'Cat',
    'Rabbit',
    'Dog',
    'Cat',
    'Rabbit',
    'Dog',
    'Cat',
    'Rabbit'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _myListView1(context),
    );
  }

// listview kieu002
  Widget _myListView1(BuildContext context) {
    return ListView.builder(
      itemCount: persions.length,
      itemBuilder: (context, index) {
        return ListTile(
          // leading: Icon(Icons.wb_sunny),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: GestureDetector(
            onTapUp: ((details) {
              Navigator.of(context).pushNamed(chatView.routeName);
            }),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 16,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        backgroundImage: NetworkImage(
                            'https://i.ibb.co/n3RzK2L/shashank.jpg'),
                      ),
                      SizedBox(
                        width: 26,
                      ),
                      Column(
                        children: [
                          Text(persions[index]),
                          Text('sub'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
