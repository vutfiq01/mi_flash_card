import 'package:flutter/material.dart';
import 'package:mi_flash_card/general_profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.teal[900],
        centerTitle: true,
        titleTextStyle: const TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            //color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      scaffoldBackgroundColor: Colors.teal[800],
    ),
    home: const MyApp(),
  ));
}
