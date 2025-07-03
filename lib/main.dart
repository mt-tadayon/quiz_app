import 'package:flutter/material.dart';
import 'package:quiz_app/home_input.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
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
          child: HomeInput(
            imagePath: 'assets/images/quiz-logo.png',
          ),
        ),
      ),
    );
  }
}
