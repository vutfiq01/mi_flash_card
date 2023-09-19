import 'package:flutter/material.dart';
import '../widget/navigation_drawer.dart';

class BMIResultPage extends StatelessWidget {
  const BMIResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        drawer: const MyNavigationDrawer(),
        body: const Text('Hey Bro!'));
  }
}
