import 'package:flutter/material.dart';
import 'package:mi_flash_card/bmiCalculatorAppComponents/bmiapp_constants.dart';
import 'package:mi_flash_card/bmiCalculatorAppComponents/bottom_button.dart';
import 'package:mi_flash_card/bmiCalculatorAppComponents/reusable_card.dart';

class BMIResultPage extends StatelessWidget {
  const BMIResultPage(
      {super.key,
      required this.bmiResult,
      required this.bmiResultText,
      required this.bmiResultInterpretation});

  final String bmiResult;
  final String bmiResultText;
  final String bmiResultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kActiveTopTwoContainerColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    bmiResultText,
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[100],
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: const TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    bmiResultInterpretation,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              bottomButtonText: 'RE-CALCULATE',
              bottomButtonPress: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
