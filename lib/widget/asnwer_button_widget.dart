import 'package:flutter/material.dart';

class AsnwerButtonWidget extends StatelessWidget {
  const AsnwerButtonWidget(
    this.text,
    this.onTap, {
    super.key,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        backgroundColor: const Color.fromARGB(255, 6, 53, 92),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
