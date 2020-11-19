import 'package:flutter/material.dart';
import 'package:lizzie_portfolio/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Colors.blue, canvasColor: Color(0xFF94b5a4)),
      home: HomeScreen(),
    );
  }
}
