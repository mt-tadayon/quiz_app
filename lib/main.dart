import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return Quiz();
  }
}
