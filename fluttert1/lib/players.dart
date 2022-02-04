import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Player extends StatefulWidget {
  Player({Key? key}) : super(key: key);

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  AudioPlayer audioplayer = AudioPlayer();
  AudioCache players = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            FlatButton(
                onPressed: () {
                  setState(() {
                    players.play('s1.mp3');
                  });
                },
                child: const Text('Click Me'))
          ],
        ),
      )),
    );
  }
}
