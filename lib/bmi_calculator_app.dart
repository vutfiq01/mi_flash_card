import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_flash_card/bmiCalculatorAppComponents/bmi_calculation.dart';
import 'package:mi_flash_card/bmiCalculatorAppComponents/bmi_result_page.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';
import 'bmiCalculatorAppComponents/bmiapp_constants.dart';
import 'bmiCalculatorAppComponents/bottom_button.dart';
import 'bmiCalculatorAppComponents/reusable_card.dart';
import 'bmiCalculatorAppComponents/round_icon_button.dart';
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
  int personWeight = kPersonInitialWeight;
  int personAge = kPersonInitialAge;

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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: const Color(0xFF8D8E98),
                      thumbColor: const Color(0xFF00DCD6),
                      overlayColor: const Color(0x2900DCD6),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape: const RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                        value: personHeight.toDouble(),
                        min: kPersonMinHeight.toDouble(),
                        max: kPersonMaxHeight.toDouble(),
                        onChanged: (double newpersonHeight) {
                          setState(() {
                            personHeight = newpersonHeight.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: kMiddleThreeContainerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'WEIGHT(kg)',
                          style: kLabelStyle,
                        ),
                        Text(
                          personWeight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressChange: () {
                                setState(() {
                                  personWeight--;
                                });
                              },
                            ),
                            const SizedBox(width: 15.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressChange: () {
                                setState(() {
                                  personWeight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: kMiddleThreeContainerColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'AGE',
                          style: kLabelStyle,
                        ),
                        Text(
                          personAge.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressChange: () {
                                setState(() {
                                  personAge--;
                                });
                              },
                            ),
                            const SizedBox(width: 15.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressChange: () {
                                setState(() {
                                  personAge++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            bottomButtonText: 'CALCULATE',
            bottomButtonPress: () {
              BmiCalculationClass calc = BmiCalculationClass(
                  height: personHeight, weight: personWeight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BMIResultPage(
                      bmiResult: calc.bmiCalculate(),
                      bmiResultText: calc.bmiResultText(),
                      bmiResultInterpretation: calc.bmiInterpretationText(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
