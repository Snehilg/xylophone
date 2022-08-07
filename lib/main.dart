import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final audioPlayer = AudioPlayer();
  Future<void> playIt(int n) async {
    await audioPlayer.play(AssetSource('note$n.wav'));
  }

  Expanded draw(int n, Color colors) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playIt(n);
        },
        child: Container(
          color: colors,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Xylophone"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            draw(1, Colors.red),
            draw(2, Colors.orange),
            draw(3, Colors.yellow),
            draw(4, Colors.green),
            draw(5, Colors.blue),
            draw(6, Colors.indigo),
            draw(7, Colors.brown),
          ],
        ),
      ),
    );
  }
}
