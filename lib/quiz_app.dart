import 'package:flutter/material.dart';
import 'package:mi_flash_card/widget/custom_appbar.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';

class QuizApp extends StatelessWidget {
  final String appBarTitle;
  const QuizApp({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 51, 43),
      appBar: CustomAppBar(title: appBarTitle),
      drawer: const MyNavigationDrawer(),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: QuizSection(),
        ),
      ),
    );
  }
}

class QuizSection extends StatefulWidget {
  const QuizSection({super.key});

  @override
  State<QuizSection> createState() => _QuizSectionState();
}

class _QuizSectionState extends State<QuizSection> {
  List<Icon> scoreIconList = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Expanded(
          flex: 5,
          child: Center(
            child: Text(
              'Question data',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  scoreIconList.add(
                    Icon(
                      Icons.check,
                      color: Colors.green[700],
                    ),
                  );
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green[700],
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  scoreIconList.add(
                    Icon(
                      Icons.close,
                      color: Colors.red[800],
                    ),
                  );
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.red[800],
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreIconList,
        ),
      ],
    );
  }
}
