// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/Views/HomePage/Widgets/weather_hour_list_tile.dart';
import 'package:app/Views/remove_glow_effect.dart';
import 'package:flutter/material.dart';

import 'second_text_home_page.dart';

class _CurrentDayWidgetState extends State<CurrentDayWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 235,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(41, 138, 194, 1),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SecondTextHomePage(
                  data: 'Hoje',
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
                SizedBox(width: 140),
                SecondTextHomePage(
                  data: '10 de Março',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                )
              ],
            ),
          ),
          RemoveGlowEffect(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  WeatherHourListTile(),
                  SizedBox(width: 20),
                  WeatherHourListTile(),
                  SizedBox(width: 20),
                  WeatherHourListTile(),
                  SizedBox(width: 20),
                  WeatherHourListTile(),
                  SizedBox(width: 20),
                  WeatherHourListTile(),
                  SizedBox(width: 20),
                  WeatherHourListTile(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CurrentDayWidget extends StatefulWidget {
  const CurrentDayWidget({super.key});

  @override
  State<CurrentDayWidget> createState() => _CurrentDayWidgetState();
}
