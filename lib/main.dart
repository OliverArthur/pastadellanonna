import 'package:flutter/material.dart';
import 'package:pastadellanonna/screen/home.dart';
import 'package:pastadellanonna/screen/menu.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Pasta Della Nonna',
     home: new HomePage(),
     routes: <String, WidgetBuilder>{
       '/menu': (BuildContext context) => new MenuPage()
     },
   );
  }
}