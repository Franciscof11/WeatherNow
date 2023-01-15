// ignore_for_file: prefer_const_constructors

import 'package:app/Views/HomePage/Screens/home_page.dart';
import 'package:go_router/go_router.dart';

import '../Views/SplashScreen/splash_screen.dart';

final routes = GoRouter(
  initialLocation: '/SplashScreen',
  routes: [
    GoRoute(
      path: '/HomePage',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/SplashScreen',
      builder: (context, state) => SplashScreen(),
    ),
  ],
);
