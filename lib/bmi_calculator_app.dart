import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';
import 'bmiCalculatorAppComponents/bmiapp_constants.dart';
import 'bmiCalculatorAppComponents/reusable_card.dart';
import 'bmiCalculatorAppComponents/toptwocard_icon_component.dart';

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
  int personHeight = kPersonInitialHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      drawer: const MyNavigationDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPressFunction: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    cardChild: const TopTwoCardChild(
                      topTwoCardChildIcon: FontAwesomeIcons.mars,
                      topTwoCardChildText: 'MALE',
                    ),
                    cardColor: selectedGender == GenderType.male
                        ? kActiveTopTwoContainerColor
                        : kInactiveTopTwoContainerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressFunction: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    cardChild: const TopTwoCardChild(
                      topTwoCardChildIcon: FontAwesomeIcons.venus,
                      topTwoCardChildText: 'FEMALE',
                    ),
                    cardColor: selectedGender == GenderType.female
                        ? kActiveTopTwoContainerColor
                        : kInactiveTopTwoContainerColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kMiddleThreeContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'HEIGHT',
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        personHeight.toString(),
                        style: kNumberStyle,
                      ),
                      const Text(
                        'cm',
                        style: kLabelStyle,
                      )
                    ],
                  ),
                  Slider(
                      value: personHeight.toDouble(),
                      min: kPersonMinHeight.toDouble(),
                      max: kPersonMaxHeight.toDouble(),
                      activeColor: kBottomContainerColor,
                      inactiveColor: const Color(0xFF8D8E98),
                      onChanged: (double newpersonHeight) {
                        setState(() {
                          personHeight = newpersonHeight.round();
                        });
                      })
                ],
              ),
            ),
          ),
          const Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: kMiddleThreeContainerColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kMiddleThreeContainerColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}
