import 'package:flutter/material.dart';
import 'package:quiz_app/screen/question_screen.dart';
import 'package:quiz_app/screen/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
  });

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String currentScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      currentScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    Widget widgetScreen = currentScreen == 'start-screen'
        ? StartScreen(switchScreen)
        : QuestionScreen();

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepPurple,
                Colors.purple,
              ],
            ),
          ),
          child: widgetScreen,
        ),
      ),
    );
  }
}
