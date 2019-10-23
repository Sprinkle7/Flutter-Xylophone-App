import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int numberof)
  {
    final player = AudioCache();
    player.play('note$numberof.wav');
  }

  Expanded ExpendedLayout({Color color, int soundNumber})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ExpendedLayout(color: Colors.red, soundNumber: 1),
              ExpendedLayout(color: Colors.yellow, soundNumber: 2),
              ExpendedLayout(color: Colors.lime, soundNumber: 3),
              ExpendedLayout(color: Colors.green, soundNumber: 4),
              ExpendedLayout(color: Colors.cyan, soundNumber: 5),
              ExpendedLayout(color: Colors.orange, soundNumber: 6),
              ExpendedLayout(color: Colors.redAccent, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
