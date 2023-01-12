import 'package:flutter/material.dart';

class _CurrentDayWidgetState extends State<CurrentDayWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 217,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(41, 139, 195, 1),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}

class CurrentDayWidget extends StatefulWidget {
  const CurrentDayWidget({super.key});

  @override
  State<CurrentDayWidget> createState() => _CurrentDayWidgetState();
}
