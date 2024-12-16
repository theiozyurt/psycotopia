import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:psycotopia/story_brain.dart';
import 'firstScenario.dart';
import 'secondScenario.dart';

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
          child: TextButton(
            onPressed: () {
              setState(() {
                //This is button 1, and always gets odd numbers.
                brain.mainStory();
                brain.scenarioSelecter(1);
              });
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.grey),
            ),
            child: Text(
              brain.firstButtonGetter(),
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextButton(
            onPressed: () {
              setState(() {
                //This is button 2, and always gets even numbers.
                brain.mainStory();
                brain.scenarioSelecter(2);
              });
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.grey),
            ),
            child: Text(
              brain.secondButtonGetter(),
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }
}
