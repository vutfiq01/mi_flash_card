import 'package:flutter/material.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';

class BmiCalculatorApp extends StatefulWidget {
  const BmiCalculatorApp({super.key});

  @override
  State<BmiCalculatorApp> createState() => _BmiCalculatorAppState();
}

class _BmiCalculatorAppState extends State<BmiCalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      drawer: const MyNavigationDrawer(),
      body: const Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: Color(0xFF00897B),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: Color(0xFF00897B),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: Color(0xFF00897B),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: Color(0xFF00897B),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: Color(0xFF00897B),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.cardColor,
  });

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
