import 'package:flutter/material.dart';

class Ecom extends StatefulWidget {
  @override
  _EcomState createState() => _EcomState();
}

class _EcomState extends State<Ecom> {
  var lst = ['1,,2,3,4,5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Center(
            child: Text(
          "ECOM APP UI",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          abc(),
          abc(),
          abc(),
        ],
      ),
      bottomNavigationBar: Container(
        width: 100,
        color: Colors.indigo,
        child: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.black87,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Favorite'),
                backgroundColor: Colors.amber),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text('Cart'),
                backgroundColor: Colors.deepOrangeAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}

Widget abc() {
  return Container(
    height: 150,
    padding: EdgeInsets.all(5),
    child: Row(children: [
      Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: 100,
          width: 180,
          child: Image.network(
            "https://photos5.appleinsider.com/gallery/0-77489-MBP-11-xl.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Mackbook pro",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text("5.0(23 Review)"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("20 pieces"),
              Text(
                r"$90",
                style: TextStyle(color: Colors.purpleAccent),
              ),
            ],
          ),
          Text("Quantity: 1")
        ],
      ),
    ]),
  );
}
