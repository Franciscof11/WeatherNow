// ignore_for_file: prefer_const_constructors

import 'package:go_router/go_router.dart';

import '../Views/HomePage/Screens/home_page.dart';

final routes = GoRouter(
  initialLocation: '/HomePage',
  routes: [
    GoRoute(
      path: '/HomePage',
      builder: (context, state) => HomePage(),
    ),
  ],
);
