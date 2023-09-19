import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';
import 'bmiCalculatorAppComponents/reusable_card.dart';
import 'bmiCalculatorAppComponents/toptwocard_icon_component.dart';

const bottomContainerHeight = 80.0;
const Color activeTopTwoContainerColor = Color(0xFF009688);
const Color inactiveTopTwoContainerColor = Color(0xFF00796B);
const Color middleThreeContainerColor = Color(0xFF00796B);
const Color bottomContainerColor = Color(0xFF00DCD6);

enum GenderType {
  male,
  female,
  none,
}

class BmiCalculatorApp extends StatefulWidget {
  const BmiCalculatorApp({super.key});

  @override
  State<BmiCalculatorApp> createState() => _BmiCalculatorAppState();
}

class _BmiCalculatorAppState extends State<BmiCalculatorApp> {
  GenderType selectedGender = GenderType.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      drawer: const MyNavigationDrawer(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    child: ReusableCard(
                      cardChild: const TopTwoCardChild(
                        topTwoCardChildIcon: FontAwesomeIcons.mars,
                        topTwoCardChildText: 'MALE',
                      ),
                      cardColor: selectedGender == GenderType.male
                          ? activeTopTwoContainerColor
                          : inactiveTopTwoContainerColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    child: ReusableCard(
                      cardChild: const TopTwoCardChild(
                        topTwoCardChildIcon: FontAwesomeIcons.venus,
                        topTwoCardChildText: 'FEMALE',
                      ),
                      cardColor: selectedGender == GenderType.female
                          ? activeTopTwoContainerColor
                          : inactiveTopTwoContainerColor,
                    ),
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
