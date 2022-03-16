import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String text;
  final int headlineLevel;
  final Color? textColor;
  final TextAlign textAlign;

  const Headline({
    Key? key,
    required this.text,
    this.headlineLevel = 1,
    this.textColor,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  double _fontSize(BuildContext context) {
    double result = 30;
    TextTheme textTheme = Theme.of(context).textTheme;

    switch (headlineLevel) {
      case 1:
        result = textTheme.headline1?.fontSize ?? result;
        break;
      case 2:
        result = textTheme.headline2?.fontSize ?? result;
        break;
      case 3:
        result = textTheme.headline3?.fontSize ?? result;
        break;
      case 4:
        result = textTheme.headline4?.fontSize ?? result;
        break;
      case 5:
        result = textTheme.headline5?.fontSize ?? result;
        break;
      case 6:
        result = textTheme.headline6?.fontSize ?? result;
        break;
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: _fontSize(context),
        color: textColor ?? Theme.of(context).primaryColor,
      ),
    );
  }
}
