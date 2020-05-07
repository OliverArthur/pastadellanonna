import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.teal,
        title: new Text('Pasta Della Nonna'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('Raviolis'),
              subtitle: Text('pollo, res y espinaca con queso'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Gnocchi'),
              subtitle: Text('pollo, res y espinaca con queso'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Pasta fresca'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          )
        ],
      ),
    );
  }
}
