// ignore_for_file: prefer_const_constructors

import 'package:app/Views/HomePage/Screens/home_page.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/HomePage',
  routes: [
    GoRoute(
      path: '/HomePage',
      builder: (context, state) => HomePage(),
    ),
  ],
);
