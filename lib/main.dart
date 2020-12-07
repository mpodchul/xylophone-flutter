import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey(int number, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playNote(number);
        },
        color: color,
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.red),
              buildKey(2, Colors.amber),
              buildKey(3, Colors.green),
              buildKey(4, Colors.pink),
              buildKey(5, Colors.blue),
              buildKey(6, Colors.orange),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
