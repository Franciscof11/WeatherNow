import 'package:flutter/material.dart';

class HomePageText extends StatelessWidget {
  const HomePageText({
    super.key,
    required this.data,
    required this.fontSize,
    required this.fontWeight,
  });

  final String data;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: Colors.white,
        fontFamily: 'SFpro',
        decoration: TextDecoration.none,
      ),
    );
  }
}
