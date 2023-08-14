import 'package:flutter/material.dart';

class SecondTextHomePage extends StatelessWidget {
  const SecondTextHomePage({
    super.key,
    required this.data,
    required this.fontSize,
    required this.fontWeight,
    required this.fontStyle,
  });

  final String data;
  final double fontSize;
  final FontStyle fontStyle;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: Colors.black,
        fontFamily: 'AbeeZee',
        decoration: TextDecoration.none,
        fontStyle: fontStyle,
      ),
    );
  }
}
