import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNUmber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNUmber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNUmber: 1),
              buildKey(color: Colors.orange, soundNUmber: 2),
              buildKey(color: Colors.yellow, soundNUmber: 3),
              buildKey(color: Colors.green, soundNUmber: 4),
              buildKey(color: Colors.blue, soundNUmber: 5),
              buildKey(color: Colors.indigo, soundNUmber: 6),
              buildKey(color: Colors.purple, soundNUmber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

