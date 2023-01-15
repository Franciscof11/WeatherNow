// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app/Views/HomePage/Widgets/Icon_weather.dart';
import 'package:app/Views/HomePage/Widgets/second_text_home_page.dart';
import 'package:flutter/material.dart';

class _WeatherHourListTileState extends State<WeatherHourListTile> {
  authWheater(weatherIcon) {
    switch (weatherIcon) {
      case 'sun':
        return Image.asset('assets/Images/sun.gif');
      case 'moon':
        return Image.asset('assets/Images/moon.gif');
      case 'cloud_and_moon':
        return Image.asset('assets/Images/cloud_and_moon.gif');
      case 'cloud_and_sun':
        return Image.asset('assets/Images/cloud_and_sun.gif');
      case 'cloudy':
        return Image.asset('assets/Images/cloudy.gif');
      case 'rain_and_sun':
        return Image.asset('assets/Images/rain_and_sun.gif');
      case 'rain':
        return Image.asset('assets/Images/rain.gif');
      case 'storm':
        return Image.asset('assets/Images/storm.gif');
    }
  }

  @override
  Widget build(BuildContext context) {
    String weatherIcon = 'storm';
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
          IconWeather(weatherIcon: authWheater(weatherIcon)),
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
