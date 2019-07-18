import 'package:flutter/material.dart';
import 'loginPage.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Rate Me",
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new LoginPage(),
    );
  }
}