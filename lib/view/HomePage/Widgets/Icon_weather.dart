// ignore_for_file: file_names

import 'package:flutter/material.dart';

class IconWeather extends StatefulWidget {
  final Widget weatherIcon;
  const IconWeather({super.key, required this.weatherIcon});

  @override
  State<IconWeather> createState() => _IconWeatherState();
}

class _IconWeatherState extends State<IconWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.weatherIcon,
    );
  }
}
