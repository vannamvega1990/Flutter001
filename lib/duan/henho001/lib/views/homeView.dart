// huong dan
// https://openplanning.net/12849/flutter-bottomnavigationbar

import 'package:flutter/material.dart';
import 'package:henho001/views/tabMesager/mesagerView.dart';

class homeView extends StatelessWidget {
  static const routeName = "/homeView";
  @override
  Widget build(BuildContext context) {
    return homeViewPage();
  }
}

class homeViewPage extends StatefulWidget {
  const homeViewPage({Key? key}) : super(key: key);

  @override
  State<homeViewPage> createState() => _homeViewState();
}

class _homeViewState extends State<homeViewPage> {
  int selectedIndex = 0;
  Widget _myContacts = MyContacts();
  Widget _myEmails = MyEmails();
  Widget _myProfile = MyProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar Example"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.email)),
      ),
      body: this.getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: "Tin nhắn",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "Tìm kiếm",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Cài đặt",
          )
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody() {
    if (this.selectedIndex == 0) {
      return this._myContacts;
    } else if (this.selectedIndex == 1) {
      return this._myEmails;
    } else {
      return this._myProfile;
    }
  }

  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}

class MyContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(child: Text("Contacts"));
    return mesagerView();
  }
}

class MyEmails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Emails"));
  }
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile"));
  }
}
