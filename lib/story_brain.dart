import 'package:flutter/cupertino.dart';

import 'story.dart';
import 'firstScenario.dart';
import 'secondScenario.dart';
import 'package:quickalert/quickalert.dart';

firstScenario scenario1brain = firstScenario();
secondScenario scenario2brain = secondScenario();

class story_brain {
  int _eventNumber = 0;
  List<story> _textsOfStory = [
    story(
        storyText:
            'Once upon a time, in a quiet village surrounded by nature, there was a boy named Ali. Ali was a curious and talented child who loved dreaming about the stars. His greatest passion was uncovering the mysteries of the night sky.'),
    story(
        storyText:
            'One day, the village elder handed Ali a mysterious empty box. On the box, it read: "The key to your dreams lies within. It\'s up to you to fill it."\n\nConfused, Ali asked, “But how can I fill this empty box?”\n\nThe elder smiled and replied, “By choosing your path wisely.”'),
  ];

  int _firstButtonNumber = 0;
  List<story> firstButton = [
    story(storyText: 'hmm, so?'),
    story(storyText: 'Choose Your Hobby'),
  ];

  int _secondButtonNumber = 0;
  List<story> secondButton = [
    story(storyText: 'okay, then?'),
    story(storyText: 'Choose Your Career'),
  ];

  int selectedOption = 0;

  void scenarioSelecter(int chosedOption) {
    selectedOption = chosedOption;
    //First Button
    if (_eventNumber == 1) {
      if (selectedOption == 1) {
        _textsOfStory.addAll(scenario1brain.getFirstStory());
        firstButton.addAll(scenario1brain.getFirstButton_fs());
        secondButton.addAll(scenario1brain.getSecondButton_fs());
        return;
      }
      //Second Button
      else if (selectedOption == 2) {
        _textsOfStory.addAll(scenario2brain.getSecondScenario());
        firstButton.addAll(scenario2brain.getFirstButton_ss());
        secondButton.addAll(scenario2brain.getSecondButton_ss());
        return;
      }
    }
  }

  void firstButtonNext() {
    _firstButtonNumber++;
  }

  void secondButtonNext() {
    _secondButtonNumber++;
  }

  String firstButtonGetter() {
    return firstButton[_firstButtonNumber].storyText;
  }

  String secondButtonGetter() {
    return secondButton[_secondButtonNumber].storyText;
  }

  String getText() {
    return _textsOfStory[_eventNumber].storyText;
  }

  void mainStory() {
    firstButtonNext();
    secondButtonNext();
    getText();
  }

  void scenarioFlow(int chosedOption) {
    selectedOption = chosedOption;
    if (_eventNumber >= 4) {
      if (chosedOption == 1) {
        if (_eventNumber % 2 == 1) {
          _eventNumber += 1;
        } else if (_eventNumber % 2 == 0) {
          _eventNumber += 2;
        }
      }
      if (chosedOption == 2) {
        if (_eventNumber % 2 == 0) {
          _eventNumber += 3;
        } else if (_eventNumber % 2 == 1) {
          _eventNumber += 2;
        }
      }
    } else {
      _eventNumber += 1;
    }
  }

  int getEventNumber() {
    return _eventNumber;
  }

  int resetEventNumber() {
    return _eventNumber = 0;
  }

  void resetButtons() {
    _firstButtonNumber = 0;
    _secondButtonNumber = 0;
  }
}
