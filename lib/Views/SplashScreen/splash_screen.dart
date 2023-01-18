// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../Routers/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Image.asset('assets/Images/splash.gif'),
        pageTransitionType: PageTransitionType.fade,
        splashTransition: SplashTransition.fadeTransition,
        duration: 4200,
        backgroundColor: Color.fromRGBO(228, 240, 246, 1),
        splashIconSize: 80000,
        nextScreen: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: routes,
        ));
  }
}
