import 'story.dart';

class story_brain {
  int _eventNumber = 0;
  List<story> _textsOfStory = [
    story(
        storyText:
            'Once upon a time there was a child and he was very clever and smart...'),
    story(
        storyText:
            'He wants to be a computer engineer which wants to be very succesfull in his carreer'),
    story(
        storyText:
            'He loves playing football and his dream is to be a footballer'),
  ];
  List<String> firstButton = [
    'Choose your carrier',
  ];

  List<String> secondButton = [
    'Choose your hobby',
  ];
  int selectedOption = 0;

  void optionSelecter(int chosedOption) {
    selectedOption = chosedOption;
    if (selectedOption == 1) {
      if (_eventNumber % 2 == 1) {
        _eventNumber += 1;
      } else {
        _eventNumber += 2;
      }
    } else if (selectedOption == 2) {
      if (_eventNumber % 2 == 0) {
        _eventNumber += 1;
      } else {
        _eventNumber += 2;
      }
    }
  }

  String getQuestion() {
    return _textsOfStory[_eventNumber].storyText;
  }
}
