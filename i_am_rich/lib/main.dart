import 'package:flutter/material.dart';

// the main function is an entry point for all flutter app
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('I Am Rich'),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Image(
            image: AssetImage('images/i_am_rich_app_icon.png'),
          ),
        ),
      ),
    ),
  );
}
