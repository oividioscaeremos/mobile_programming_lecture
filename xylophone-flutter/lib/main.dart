import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playSound(String soundNumber) {
  final player = AudioCache();
  player.play('note' + soundNumber + '.wav');
}

Widget buildButton({int soundNumber, Color color}) {
  return Expanded(
    child: ButtonTheme(
      child: RaisedButton(
        color: color,
        onPressed: () {
          playSound(soundNumber.toString());
        },
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildButton(soundNumber: 1, color: Colors.blueGrey),
            buildButton(soundNumber: 1, color: Colors.greenAccent),
            buildButton(soundNumber: 1, color: Colors.green),
            buildButton(soundNumber: 1, color: Colors.yellow),
            buildButton(soundNumber: 1, color: Colors.orange),
            buildButton(soundNumber: 1, color: Colors.red),
            buildButton(soundNumber: 1, color: Colors.pink)
          ],
        ),
      ),
    );
  }
}
