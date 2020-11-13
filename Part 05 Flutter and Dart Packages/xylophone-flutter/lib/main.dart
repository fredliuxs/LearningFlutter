import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int seqNum) {
    final player = AudioCache();
    player.play('note$seqNum.wav');
    player.clearCache();
  }

  Widget buildKey({Color color, int seqNum}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(seqNum);
        },
        color: color,
        child: null,
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
              buildKey(color: Colors.red, seqNum: 1),
              buildKey(color: Colors.orange, seqNum: 2),
              buildKey(color: Colors.yellow, seqNum: 3),
              buildKey(color: Colors.green, seqNum: 4),
              buildKey(color: Colors.teal, seqNum: 5),
              buildKey(color: Colors.blue, seqNum: 6),
              buildKey(color: Colors.purple, seqNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
