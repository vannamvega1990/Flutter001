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

class BodyLayout extends StatefulWidget {
  @override
  BodyLayoutState createState() {
    return new BodyLayoutState();
  }
}

class BodyLayoutState extends State<BodyLayout> {
  List<String> titles = ['Sun', 'Moon', 'Star'];

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }

  Widget _myListView() {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        final item = titles[index];
        return Card(
          child: ListTile(
            title: Text(item),
            onTap: () {
              //                                  <-- onTap
              setState(() {
                titles.insert(index, 'Planet');
              });
              var product = new Product(600, quantity: 1);
              product.showTotal();

              product.quantity = 2;
              product.showTotal();
            },
            onLongPress: () {
              //                            <-- onLongPress
              setState(() {
                titles.removeAt(index);
              });
            },
          ),
        );
      },
    );
  }
}

class Name1 {
  var name;
  int ts2 = 0;
  Name1(var name, {int ts2 = 6}) {
    this.name = name;
    this.ts2 = ts2;
  }
  hamso() {}
}

class Product {
  //Khai báo các thuộc tính
  String manufacture = '';
  String name = '';
  var price = 0;
  int quantity = 0;

  //Khai báo hàm khởi tạo
  Product(var price, {int quantity = 0}) {
    this.price = price;
    this.quantity = quantity;
  }

  //Khai báo các phương thức
  calulateTotal() {
    return this.price * this.quantity;
  }

  showTotal() {
    var tong = this.calulateTotal();
    print("Tổng số tiền là: $tong");
  }
}
