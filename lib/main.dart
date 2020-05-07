import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pastadellanonna/screen/splashScreen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Pasta Della Nonna',
     home: new SplashScreen(),
   );
  }
}