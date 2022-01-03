import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Xylophone'),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 5,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                  width: 400,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.black),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage('assets/music.jpg'),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                buildKey(colour: Colors.red, soundNumber: 1),
                                buildKey(colour: Colors.green, soundNumber: 2),
                                buildKey(colour: Colors.yellow, soundNumber: 3),
                                buildKey(colour: Colors.black, soundNumber: 4),
                                buildKey(colour: Colors.grey, soundNumber: 5),
                                buildKey(colour: Colors.orange, soundNumber: 6),
                                buildKey(
                                    colour: Colors.lightBlue, soundNumber: 7),
                              ]),
                        ),
                      ),
                    ],
                  )),
            ),
          )),
    );
  }

  ElevatedButton buildKey({required Color colour, required int soundNumber}) {
    return ElevatedButton(
        style: TextButton.styleFrom(
          side: BorderSide(
            width: 3,
            color: Colors.white30,
          ),
          backgroundColor: colour,
          padding: EdgeInsets.all(23),
        ),
        onPressed: () {
          final Player = AudioCache();
          Player.play('note$soundNumber.wav');
        },
        child: Icon(Icons.music_note_outlined));
  }
}
