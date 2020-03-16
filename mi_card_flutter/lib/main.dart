import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Text('Hello World!'),
            width: 100.0,
            height: 100.0,
            margin: EdgeInsets.all(25.0),
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          ),
        ),
      ),
    );
  }
}
