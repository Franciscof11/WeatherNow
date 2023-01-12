// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/Views/HomePage/Widgets/second_text_home_page.dart';
import 'package:flutter/material.dart';

class _WeatherHourListTileState extends State<WeatherHourListTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 12),
          SecondTextHomePage(
            data: '31°C',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          SizedBox(height: 10),
          Image.asset('assets/Images/sun.gif'),
          SizedBox(height: 10),
          SecondTextHomePage(
            data: '15:00',
            fontSize: 15,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ],
      ),
    );
  }
}

class WeatherHourListTile extends StatefulWidget {
  const WeatherHourListTile({super.key});

  @override
  State<WeatherHourListTile> createState() => _WeatherHourListTileState();
}
