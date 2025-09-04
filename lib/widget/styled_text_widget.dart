import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledTextWidget extends StatelessWidget {
  const StyledTextWidget(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.lato(
        fontSize: 18,
        color: const Color.fromARGB(255, 205, 199, 214),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
