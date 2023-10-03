import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.purpleAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.purpleAccent, width: 2.0),
  ),
);

InputDecoration kInputDecoration({
  required String hintText,
  required Color color,
}) {
  return InputDecoration(
    hintText: hintText,
    contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.0),
      borderRadius: const BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 2.0),
      borderRadius: const BorderRadius.all(Radius.circular(32.0)),
    ),
  );
}
