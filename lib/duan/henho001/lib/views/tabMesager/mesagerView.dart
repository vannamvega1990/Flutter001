import 'package:flutter/material.dart';
import 'package:henho001/views/tabMesager/onlineMessagerView.dart';

class mesagerView extends StatelessWidget {
  const mesagerView({Key? key}) : super(key: key);
  static const routeName = '/registerView';

  @override
  Widget build(BuildContext context) {
    return mesagerViewPage();
  }
}

class mesagerViewPage extends StatefulWidget {
  const mesagerViewPage({Key? key}) : super(key: key);

  @override
  State<mesagerViewPage> createState() => _mesagerViewSate();
}

class _mesagerViewSate extends State<mesagerViewPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  initState() {
    // _tabController = new TabController(length: 2, vsync: this);
    _tabController = TabController(
      initialIndex: 0,
      length: 6,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return build005(context);
  }

  Widget build001(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Column(
        children: [
          TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Text('Tab 1'),
                ),
                Tab(
                  child: Text('Investment'),
                ),
                Tab(
                  child: Text('Your Earning'),
                ),
                Tab(
                  child: Text('Current Balance'),
                ),
                Tab(
                  child: Text('Tab 5'),
                ),
                Tab(
                  child: Text('Tab 6'),
                )
              ]),
          TabBarView(children: <Widget>[
            Container(
              child: Center(
                child: Text('Tab 1'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 2'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 3'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 4'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 5'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 6'),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  Widget build005(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TabBar(
            isScrollable: true,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.red,
            tabs: [
              Tab(
                icon: Icon(Icons.people),
                text: 'Tất cả',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Online',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: 'Chưa đọc',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: 'Tất cả',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Online',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: 'Chưa đọc',
              ),
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              children: [
                // Text('people'),
                onlineMessagerView(),
                Text('Person'),
                Text('Person'),
                Text('people'),
                Text('Person'),
                Text('Person')
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
