import 'story_class.dart';

class StoryBrain {
  int _storyTracker = 0;

  final List<Story> _storyData = [
    Story(
        storyText:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choiceText1: 'I\'ll hop in. Thanks for the help!',
        choiceText2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyText: 'He nods slowly, unphased by the question.',
        choiceText1: 'At least he\'s honest. I\'ll climb in.',
        choiceText2: 'Wait, I know how to change a tire.'),
    Story(
        storyText:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choiceText1: 'I love Elton John! Hand him the cassette tape.',
        choiceText2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyText:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choiceText1: 'Restart',
        choiceText2: ''),
    Story(
        storyText:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choiceText1: 'Restart',
        choiceText2: ''),
    Story(
        storyText:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choiceText1: 'Restart',
        choiceText2: '')
  ];

  String getStory() {
    return _storyData[_storyTracker].storyText;
  }

  String getStoryChoice1() {
    return _storyData[_storyTracker].choiceText1;
  }

  String getStoryChoice2() {
    return _storyData[_storyTracker].choiceText2;
  }

  void nextStory(int userChoiceNumber) {
    if (userChoiceNumber == 1 && _storyTracker == 0) {
      _storyTracker = _storyTracker + 2;
      getStory();
    } else if (userChoiceNumber == 2 && _storyTracker == 0) {
      _storyTracker++;
      getStory();
    } else if (userChoiceNumber == 1 && _storyTracker == 1) {
      _storyTracker++;
      getStory();
    } else if (userChoiceNumber == 2 && _storyTracker == 1) {
      _storyTracker = _storyTracker + 2;
      getStory();
    } else if (userChoiceNumber == 1 && _storyTracker == 2) {
      _storyTracker++;
      getStory();
    } else if (userChoiceNumber == 2 && _storyTracker == 2) {
      _storyTracker = _storyTracker + 2;
      getStory();
    } else if (_storyTracker == 3 || _storyTracker == 4 || _storyTracker == 5) {
      restart();
    }
  }

  void restart() {
    _storyTracker = 0;
  }

  bool secondButtonVisibility() {
    if (_storyTracker == 0 || _storyTracker == 1 || _storyTracker == 2) {
      return true;
    } else {
      return false;
    }
  }
}
