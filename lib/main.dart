import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/news_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
      ),
      home: HomeScreen(),
    );
  }
}