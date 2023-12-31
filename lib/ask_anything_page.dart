import 'package:flutter/material.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';
import 'dart:math';

class AskAnything extends StatelessWidget {
  const AskAnything({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Ask Anything'),
      ),
      drawer: const MyNavigationDrawer(),
      body: const AskAnythingBody(),
    );
  }
}

class AskAnythingBody extends StatefulWidget {
  const AskAnythingBody({super.key});

  @override
  State<AskAnythingBody> createState() => _AskAnythingBodyState();
}

class _AskAnythingBodyState extends State<AskAnythingBody> {
  int ballNumber = 1;

  void randomizeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          randomizeBall();
        },
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
