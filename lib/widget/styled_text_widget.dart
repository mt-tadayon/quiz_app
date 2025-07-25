import 'package:flutter/material.dart';

class StyledTextWidget extends StatelessWidget {
  const StyledTextWidget(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
