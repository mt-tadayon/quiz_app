import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        style: GoogleFonts.lato(
          fontSize: 24,
          color: const Color.fromARGB(255, 205, 199, 214),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
