import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'SpartanMB',
  fontSize: 90.0,
  color: Colors.white,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'SpartanMB',
  fontSize: 50.0,
  color: Colors.white,
);

const kButtonTextStyle = TextStyle(
  fontSize: 27.0,
  fontFamily: 'SpartanMB',
  color: Colors.white,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
    size: 30.0,
  ),
  hintText: 'Enter Location Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
);
