import 'package:flutter/material.dart';
import 'package:mi_flash_card/general_profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mi_flash_card/myToDoApp/todoModels/todo_task_data.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
    create: (BuildContext context) => TaskData(),
    child: MaterialApp(
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
    ),
  ));
}
