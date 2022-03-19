import 'package:flutter/material.dart';

class chatView extends StatefulWidget {
  const chatView({Key? key}) : super(key: key);
  static const routeName = "/chatView";

  @override
  State<chatView> createState() => _chatViewState();
}

class _chatViewState extends State<chatView> {
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.key),
          onPressed: () => {
            // Navigator.of(context).pop();
            Navigator.pop(context)
          },
        ),
      ),
      body: Container(
        child: getBody(),
      ),
    );
  }

  Widget listView() {
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

  Widget getBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            child: listView(),
          ),
        ),
        SizedBox(
          height: 26,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Username',
            fillColor: Colors.transparent,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }
}
