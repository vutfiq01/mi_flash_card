import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';
import 'bmiCalculatorAppComponents/reusable_card.dart';
import 'bmiCalculatorAppComponents/toptwocard_icon_component.dart';

const bottomContainerHeight = 80.0;
const Color topTwoContainerColor = Color(0xFF009688);
const Color middleThreeContainerColor = Color(0xFF00796B);
const Color bottomContainerColor = Color(0xFF00DCD6);

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
      body: Column(
        children: <Widget>[
          const Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardChild: TopTwoCardChild(
                      topTwoCardChildIcon: FontAwesomeIcons.mars,
                      topTwoCardChildText: 'MALE',
                    ),
                    cardColor: topTwoContainerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: TopTwoCardChild(
                      topTwoCardChildIcon: FontAwesomeIcons.venus,
                      topTwoCardChildText: 'FEMALE',
                    ),
                    cardColor: topTwoContainerColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              cardColor: middleThreeContainerColor,
            ),
          ),
          const Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: middleThreeContainerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: middleThreeContainerColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
