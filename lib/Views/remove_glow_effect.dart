// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RemoveGlowEffect extends StatelessWidget {
  const RemoveGlowEffect({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MaterialScrollBehavior().copyWith(overscroll: false),
      child: child,
    );
  }
}
