import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String textButton;
  const MyButton(
      {super.key,
      required this.color,
      required this.textColor,
      required this.textButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          textButton,
          style: TextStyle(color: textColor, fontSize: 24),
        ),
      ),
    );
  }
}
