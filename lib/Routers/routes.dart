// ignore_for_file: prefer_const_constructors

import 'package:app/Views/HomePage/Screens/home_page.dart';
import 'package:go_router/go_router.dart';

import '../Views/HomePage/Screens/start_page.dart';

final routes = GoRouter(
  initialLocation: '/StartPage',
  routes: [
    GoRoute(
      path: '/HomePage',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/StartPage',
      builder: (context, state) => StartPage(),
    ),
  ],
);
