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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Text('container 1'),
                color: Colors.white,
                width: 125.0,
                height: 100.0,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              ),
              Container(
                child: Text('container 2'),
                color: Colors.red,
                width: 125.0,
                height: 100.0,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              ),
              Container(
                child: Text('container 3'),
                color: Colors.lightBlue,
                width: 125.0,
                height: 100.0,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
