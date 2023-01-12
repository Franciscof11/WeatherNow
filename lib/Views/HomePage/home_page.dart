// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(41, 178, 221, 1),
            Color.fromRGBO(51, 170, 221, 1),
            Color.fromRGBO(45, 200, 234, 1),
            /*      Color.fromRGBO(8, 36, 79, 1),
            Color.fromARGB(255, 15, 63, 151),
            Color.fromRGBO(11, 66, 171, 1), */
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        )),
        child: SafeArea(
          child: HomeContent(),
        ),
      ),
    );
  }
}
