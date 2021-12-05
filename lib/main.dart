import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('assets_note$noteNumber.wav');
  }

  Expanded buildKey({required Color color, required int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, noteNumber: 1),
            buildKey(color: Colors.orange, noteNumber: 2),
            buildKey(color: Colors.yellow, noteNumber: 3),
            buildKey(color: Colors.green, noteNumber: 4),
            buildKey(color: Colors.blue, noteNumber: 5),
            buildKey(color: Colors.indigo, noteNumber: 6),
            buildKey(color: Colors.purple, noteNumber: 7),
          ],
        )),
      ),
    );
  }
}
