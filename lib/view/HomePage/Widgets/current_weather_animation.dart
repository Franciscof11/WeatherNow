import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class _CurrentWeatherAnimationState extends State<CurrentWeatherAnimation> {
  authWheater(weatherAnimation) {
    switch (weatherAnimation) {
      case 'sun':
        return 'https://assets8.lottiefiles.com/temp/lf20_Stdaec.json';
      case 'moon':
        return 'https://assets1.lottiefiles.com/temp/lf20_y6mY2A.json';
      case 'cloud_and_moon':
        return 'https://assets1.lottiefiles.com/temp/lf20_Jj2Qzq.json';
      case 'cloud_and_sun':
        return 'https://assets5.lottiefiles.com/temp/lf20_HflU56.json';
      case 'cloudy':
        return 'https://assets5.lottiefiles.com/temp/lf20_kOfPKE.json';
      case 'rain_and_sun':
        return Image.asset('assets/Images/rain_and_sun.gif');
      case 'rain':
        return Image.asset('assets/Images/rain.gif');
      case 'storm':
        return 'https://assets1.lottiefiles.com/temp/lf20_XkF78Y.json';
    }
  }

  @override
  Widget build(BuildContext context) {
    String weatherAnimation = widget.weatherAnimation;
    return Lottie.network(authWheater(weatherAnimation));
  }
}

class CurrentWeatherAnimation extends StatefulWidget {
  const CurrentWeatherAnimation({super.key, required this.weatherAnimation});
  final String weatherAnimation;
  @override
  State<CurrentWeatherAnimation> createState() =>
      _CurrentWeatherAnimationState();
}
