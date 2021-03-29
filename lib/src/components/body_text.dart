import 'package:flutter/material.dart';
import 'package:minhas_financas/src/constants/themes.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color textColor;

  const BodyText({
    Key? key,
    required this.text,
    this.textColor = Themes.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: textColor,
      ),
    );
  }
}
