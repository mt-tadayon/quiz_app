import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

class HomeInput extends StatelessWidget {
  const HomeInput({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 20),
          StyledText('Learn Flutter the fun way!'),
          SizedBox(height: 20),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
