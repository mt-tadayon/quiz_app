import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return Quiz(
      screen: StartScreen(
        imagePath: 'assets/images/quiz-logo.png',
      ),
    );
  }
}
