import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade400,
          appBar: AppBar(
            title: const Text('Ask Me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: ballPage(),
        ),
      ),
    );

class ballPage extends StatefulWidget {
  @override
  _ballPageState createState() => _ballPageState();
}

class _ballPageState extends State<ballPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
