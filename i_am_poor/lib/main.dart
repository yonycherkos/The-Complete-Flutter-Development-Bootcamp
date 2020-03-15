import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text('I Am Poor'),
          ),
          backgroundColor: Colors.black45,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/yin-yang-jewelry-meaning-and-should-i-wear-it.png'),
          ),
        ),
      ),
    ),
  );
}
