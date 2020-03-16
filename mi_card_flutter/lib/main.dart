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
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/yony.jpg'),
              ),
              Text(
                'Yonathan Cherkos',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'AI PROGRAMMER',
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 30.0,
                  fontFamily: 'Source Sans Regular'
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+251 934 41 23 27',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'yonycherkos@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro'
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
