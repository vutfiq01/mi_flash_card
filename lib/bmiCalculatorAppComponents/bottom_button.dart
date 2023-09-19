import 'package:flutter/material.dart';
import 'bmiapp_constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.bottomButtonText,
    required this.bottomButtonPress,
  });

  final String bottomButtonText;
  final VoidCallback bottomButtonPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: bottomButtonPress,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            bottomButtonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }
}
