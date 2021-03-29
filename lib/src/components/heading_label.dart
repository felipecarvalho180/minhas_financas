import 'package:flutter/material.dart';
import 'package:minhas_financas/src/constants/themes.dart';

class HeadingLabel extends StatelessWidget {
  final String text;
  final Color textColor;

  const HeadingLabel({
    Key? key,
    required this.text,
    this.textColor = Themes.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: TextStyle(
        fontSize: 12,
        letterSpacing: 1,
        color: textColor,
      ),
    );
  }
}
