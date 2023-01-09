// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../remove_glow_effect.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: 'SFpro',
    );
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(8, 36, 79, 1),
            Color.fromARGB(255, 15, 63, 151),
            Color.fromRGBO(11, 66, 171, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        )),
        child: SafeArea(
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 35),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        SvgPicture.asset('assets/Icons/location_icon.svg'),
                        SizedBox(width: 8),
                        Text(
                          'Maranhão',
                          style: style,
                        ),
                        SizedBox(width: 2),
                        SvgPicture.asset(
                          'assets/Icons/dropdown_icon.svg',
                          width: 35,
                        ),
                        SizedBox(width: 150),
                        SvgPicture.asset('assets/Icons/notification_icon.svg'),
                      ],
                    ),
                    SizedBox(height: 40),
                    SvgPicture.asset('assets/Images/sun_cloud.svg'),
                    SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
