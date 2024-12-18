import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:psycotopia/story_brain.dart';
import 'firstScenario.dart';
import 'secondScenario.dart';
import 'package:quickalert/quickalert.dart';

void main() {
  runApp(gamepage());
}

class gamepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ColorfulSafeArea(
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: gameInterface(),
            ),
          ),
        ),
      ),
    );
  }
}

class gameInterface extends StatefulWidget {
  const gameInterface({super.key});

  @override
  State<gameInterface> createState() => _gameInterfaceState();
}

class _gameInterfaceState extends State<gameInterface> {
  story_brain brain = story_brain();
  firstScenario scenario1 = firstScenario();
  secondScenario scenario2 = secondScenario();

  void playAgain() {
    brain.resetEventNumber();
    isVisibleCasual = true;
    isVisibleFinal = false;
    brain.resetButtons();
  }

  //Button visibility changer
  bool isVisibleCasual = true;
  bool isVisibleFinal = false;

  void finishAlert(BuildContext context) {
    if (brain.getEventNumber() == 9 || brain.getEventNumber() == 8) {
      QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: 'You have succesfully finished the story',
      ); // That's it to display an alert, use other properties to customize.
      isVisibleCasual = false;
      isVisibleFinal = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 50.0,
        ),
        Expanded(
          child: new SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Text(
              brain.getText(),
              style: TextStyle(
                fontFamily: 'Tourney',
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Visibility(
            visible: isVisibleCasual,
            child: TextButton(
              onPressed: () {
                setState(() {
                  //This is button 1, and always gets odd numbers.
                  brain.mainStory();
                  brain.scenarioSelecter(1);
                  brain.scenarioFlow(1);
                  finishAlert(context);
                });
              },
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(Color(0xFFBC6C25)),
              ),
              child: Text(
                brain.firstButtonGetter(),
                style: TextStyle(
                  fontFamily: 'VT323',
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Visibility(
            visible: isVisibleCasual,
            child: TextButton(
              onPressed: () {
                setState(() {
                  //This is button 2, and always gets even numbers.
                  brain.mainStory();
                  brain.scenarioSelecter(2);
                  brain.scenarioFlow(2);
                  finishAlert(context);
                });
              },
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(Color(0xFF0077B6)),
              ),
              child: Text(
                brain.secondButtonGetter(),
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontFamily: 'VT323',
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Visibility(
            visible: isVisibleFinal,
            child: TextButton(
              onPressed: () {
                setState(() {
                  playAgain();
                });
              },
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                backgroundColor: WidgetStatePropertyAll(Color(0xFF582F0E)),
              ),
              child: Text(
                'Play Again!',
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'VT323',
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
