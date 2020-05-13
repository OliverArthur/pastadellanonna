import 'package:flutter/material.dart';
import 'package:pastadellanonna/models/products.dart';
import 'package:pastadellanonna/screen/details.dart';
import 'package:provider/provider.dart';

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
        actions: <Widget>[
          PopupMenuButton<int>(
            icon: Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem(
                  value: 0,
                  child: Text('Información'),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('Contacto'),
                )
              ];
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, idx) => Column(
          children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ListTile(
              title: Text(products[idx].name),
              subtitle: Text(products[idx].ingredients),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                    settings: RouteSettings(
                      arguments: products[idx],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
