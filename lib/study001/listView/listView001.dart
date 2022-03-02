import 'package:flutter/material.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ListViews',
          theme: ThemeData(
            primarySwatch: Colors.teal,
          ),
          home: Scaffold(
            appBar: AppBar(title: Text('ListViews')),
            body: BodyLayout(),
          ),
        );
      }
    }

    class BodyLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView12(context);
      }
    }

    // listview don gian 001
    Widget _myListView(BuildContext context) {
      // return ListView();
      return ListView(
        children: const <Widget>[
          ListTile(
            title: Text('Dog'),
          ),
          ListTile(
            title: Text('Cat'),
          ),
          ListTile(
            title: Text('Rabbit'),
          ),
        ],
      );
    }

    // listview kieu002
    Widget _myListView1(BuildContext context) {
      return ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            const ListTile(
              title: Text('Dog'),
            ),
            const ListTile(
              title: Text('Cat'),
            ),
            const ListTile(
              title: Text('Rabbit'),
            ),
          ],
        ).toList(),
      );
    }

    // kieu003
    Widget _myListView3(BuildContext context) {

      // backing data
      final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria', 
        'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
        'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
        'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
        'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
        'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
        'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
        'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 
        'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

      return ListView.builder(
        itemCount: europeanCountries.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(europeanCountries[index]),
          );
        },
      );
    }

    // kieu005

    Widget _myListView5(BuildContext context) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('row $index'),
          );
        },
      );
    }

    // kieu006

    Widget _myListView6(BuildContext context) {
      return ListView.separated(
        itemCount: 1000,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('row $index'),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      );
    }

    // kieu007: kieu ngang

    Widget _myListView7(BuildContext context) {
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 1.0),
            width: 50,
            color: Colors.tealAccent,
            child: Text('$index'),
          );
        },
      );
    }

    // keu008: co icon

    Widget _myListView8(BuildContext context) {
      return ListView(
        children: const <Widget>[
          ListTile(
            leading: Icon(Icons.wb_sunny),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Sun'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/login.png'),
            ),
            title: Text('Moon'),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Star'),
            subtitle: Text('93 million miles away'), //           <-- subtitle
          ),
        ],
      );
    }

    // kieu009: card

    Widget _myListView9(BuildContext context) {

      final titles = ['bike', 'boat', 'bus', 'car',
      'railway', 'run', 'subway', 'transit', 'walk'];

      final icons = [Icons.directions_bike, Icons.directions_boat,
      Icons.directions_bus, Icons.directions_car, Icons.directions_railway,
      Icons.directions_run, Icons.directions_subway, Icons.directions_transit,
      Icons.directions_walk];

      return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card( //                           <-- Card widget
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(titles[index]),
            ),
          );
        },
      );
    }

    // kieu010: custom listTitle

    Widget _myListView10(BuildContext context) {

      // the Expanded widget lets the columns share the space
      Widget column = Expanded(
        child: Column(
          // align the text to the left instead of centered
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text('Title', style: TextStyle(fontSize: 16),),
            Text('subtitle'),
          ],
        ),
      );

      return ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  column,
                  column,
                ],
              ),
            ),
          );
        },
      );

    }

    // kieu011: Touch detection

    Widget _myListView11(BuildContext context) {
      return ListView(
        children: <Widget>[
          ListTile(
            title: Text('Sun'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Sun');
            },
          ),
          ListTile(
            title: Text('Moon'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Moon');
            },
          ),
          ListTile(
            title: Text('Star'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Star');
            },
          ),
        ],
      );
    }


// kieu012

Widget _myListView12(BuildContext context) {
  Widget column = Expanded(
        child: Column(
          // align the text to the left instead of centered
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text('Title', style: TextStyle(fontSize: 16),),
            Text('subtitle'),
          ],
        ),
      );
      return ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                print('tapped');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    column,
                    column,
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

