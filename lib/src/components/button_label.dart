import 'package:flutter/material.dart';
import 'package:minhas_financas/src/constants/themes.dart';

class ButtonLabel extends StatelessWidget {
  final String text;
  final Color textColor;

  const ButtonLabel({
    Key? key,
    required this.text,
    this.textColor = Themes.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        fontSize: 14,
        color: textColor,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    );
  }
}
