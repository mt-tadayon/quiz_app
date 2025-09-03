import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screen/question_screen.dart';
import 'package:quiz_app/screen/start_screen.dart';

enum Screen { start, questions, answers }

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
  });

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Screen currentScreen = Screen.start;
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      currentScreen = Screen.questions;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        currentScreen = Screen.start;
      });
    }
  }

  @override
  Widget build(context) {
    Widget widgetScreen = currentScreen == Screen.start
        ? StartScreen(switchScreen)
        : QuestionScreen(onSelectAnswer: chooseAnswer);

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
