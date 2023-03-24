import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(
      {required Color color, required int soundNumber, required String name}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.black, soundNumber: 1, name: 'Sa'),
              buildKey(color: Colors.white, soundNumber: 2, name: 'Ray'),
              buildKey(color: Colors.black, soundNumber: 3, name: 'Ga'),
              buildKey(color: Colors.white, soundNumber: 4, name: 'Ma'),
              buildKey(color: Colors.black, soundNumber: 5, name: 'Pa'),
              buildKey(color: Colors.white, soundNumber: 6, name: 'Dha'),
              buildKey(color: Colors.black, soundNumber: 7, name: 'Ni'),
            ],
          ),
        ),
      ),
    );
  }
}
