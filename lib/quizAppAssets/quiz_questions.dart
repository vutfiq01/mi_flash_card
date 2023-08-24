import 'question_class.dart';

class QuizQuestions {
  int _questionTracker = 0;
  final List<Question> _questionBank = [
    Question(q: 'There are five zeros in one hundred thousand.', a: true),
    Question(
        q: 'If you add the two numbers on the opposite sides of dice together, the answer is always 7.',
        a: true),
    Question(q: 'The moon is just 1 percent of the mass of Earth.', a: true),
    Question(q: 'Apes cant laugh.', a: false),
    Question(q: 'A snail can sleep for three years.', a: true),
    Question(
        q: 'Tasting is never determined by what you\'re smelling.', a: false),
    Question(q: 'You can sneeze during sleep.', a: false),
  ];

  void nextQuestion() {
    if (_questionTracker < _questionBank.length - 1) {
      _questionTracker++;
    }
  }

  String getQuestionPrompt() {
    return _questionBank[_questionTracker].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionTracker].answerText;
  }

  bool isFinished() {
    if (_questionTracker >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestionTracker() {
    _questionTracker = 0;
  }

  int getQuestionCount() {
    return _questionBank.length;
  }
}
