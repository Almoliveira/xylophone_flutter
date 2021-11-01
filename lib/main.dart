import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundFile) {
    final player = AudioCache();
    player.play("note$soundFile.wav");
  }

  Expanded buildKey({Color colorValue, int soundValue}) {
    return Expanded(
      child: FlatButton(
        color: colorValue,
        onPressed: () {
          playSound(soundValue);
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
            children: [
              buildKey(colorValue: Colors.red, soundValue: 1),
              buildKey(colorValue: Colors.orange, soundValue: 2),
              buildKey(colorValue: Colors.yellow, soundValue: 3),
              buildKey(colorValue: Colors.green, soundValue: 4),
              buildKey(colorValue: Colors.teal, soundValue: 5),
              buildKey(colorValue: Colors.blue, soundValue: 6),
              buildKey(colorValue: Colors.purple, soundValue: 7),
            ],
          ),
        ),
      ),
    );
  }
}
