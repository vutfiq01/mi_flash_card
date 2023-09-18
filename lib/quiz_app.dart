import 'package:flutter/material.dart';
import 'package:mi_flash_card/widget/navigation_drawer.dart';
import 'quizAppAssets/quiz_questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizQuestions quizData = QuizQuestions();

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 51, 43),
      appBar: AppBar(title: const Text('Attempt Quiz')),
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

  void answerChecker(bool userAnswer) {
    bool rightAnswer = quizData.getQuestionAnswer();
    setState(
      () {
        if (quizData.isFinished() == true) {
          Alert(
            context: context,
            type: AlertType.success,
            title: "Quiz Finished!",
            desc: "You just reached the end.",
            buttons: [
              DialogButton(
                onPressed: () => Navigator.pop(context),
                color: Colors.teal[900],
                width: 120,
                child: const Text(
                  "COOL!",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          ).show();
          quizData.resetQuestionTracker();
          scoreIconList.clear();
        } else {
          if (rightAnswer == userAnswer) {
            scoreIconList.add(
              Icon(
                Icons.check,
                color: Colors.green[700],
              ),
            );
          } else {
            scoreIconList.add(
              Icon(
                Icons.close,
                color: Colors.red[800],
              ),
            );
          }

          quizData.nextQuestion();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              quizData.getQuestionPrompt(),
              textAlign: TextAlign.center,
              style: const TextStyle(
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
                answerChecker(true);
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
                answerChecker(false);
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
