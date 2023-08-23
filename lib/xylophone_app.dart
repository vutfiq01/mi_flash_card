import 'package:flutter/material.dart';
import 'package:mi_flash_card/widget/custom_appbar.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const CustomAppBar(
        title: 'Play Xylophone',
      ),
      drawer: const MyNavigationDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            tapHere(1, Colors.red),
            tapHere(2, Colors.orange),
            tapHere(3, Colors.yellow),
            tapHere(4, Colors.green),
            tapHere(5, Colors.teal),
            tapHere(6, Colors.blue),
            tapHere(7, Colors.purple),
          ],
        ),
      ),
    );
  }

  Widget tapHere(int nodeNumber, Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
        onPressed: () {
          playAudio(nodeNumber);
        },
        child: const Text(''),
      ),
    );
  }

  void playAudio(int nodeNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$nodeNumber.wav'),
    );
  }
}
