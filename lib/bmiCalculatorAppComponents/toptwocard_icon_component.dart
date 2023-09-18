import 'package:flutter/material.dart';

const labelStyle = TextStyle(
  fontSize: 18.0,
  color: Color.fromARGB(255, 211, 213, 225),
);

class TopTwoCardChild extends StatelessWidget {
  const TopTwoCardChild({
    super.key,
    required this.topTwoCardChildText,
    required this.topTwoCardChildIcon,
  });

  final IconData topTwoCardChildIcon;
  final String topTwoCardChildText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          topTwoCardChildIcon,
          color: Colors.white,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(
          topTwoCardChildText,
          style: labelStyle,
        )
      ],
    );
  }
}
