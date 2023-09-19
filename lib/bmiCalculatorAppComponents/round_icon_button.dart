import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.icon,
    this.onPressChange,
  });

  final IconData icon;
  final VoidCallback? onPressChange;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressChange,
      elevation: 1.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: Colors.teal[400],
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
