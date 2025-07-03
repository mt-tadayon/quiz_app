import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key, required this.screen});

  final Widget screen;

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
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
          child: widget.screen,
        ),
      ),
    );
  }
}
