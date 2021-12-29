import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: MusicPlayPage(),
        ),
      ),
    );
  }
}

class MusicPlayPage extends StatelessWidget {
  final player = AudioCache();

  Expanded createKeys({String path, Color color}) {
    return Expanded(
      child: RaisedButton(
          elevation: 10,
          color: color,
          onPressed: () {
            player.play(path);
          },
          child: null),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        createKeys(
          path: 'audio/note1.wav',
          color: Colors.red,
        ),
        createKeys(
          path: 'audio/note2.wav',
          color: Colors.orange,
        ),
        createKeys(
          path: 'audio/note3.wav',
          color: Colors.yellow,
        ),
        createKeys(
          path: 'audio/note4.wav',
          color: Colors.green,
        ),
        createKeys(
          path: 'audio/note5.wav',
          color: Colors.teal,
        ),
        createKeys(
          path: 'audio/note6.wav',
          color: Colors.blue,
        ),
        createKeys(
          path: 'audio/note7.wav',
          color: Colors.purple,
        ),
      ],
    );
  }
}
