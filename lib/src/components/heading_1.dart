import 'package:flutter/material.dart';
import 'package:minhas_financas/src/constants/themes.dart';

class Heading1 extends StatelessWidget {
  final String text;
  final Color textColor;

  const Heading1({
    Key? key,
    required this.text,
    this.textColor = Themes.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 28,
        color: textColor,
      ),
    );
  }
}
