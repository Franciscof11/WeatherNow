import 'package:go_router/go_router.dart';

import '../Views/HomePage/home_page.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: 'PageTest',
      builder: (context, state) => const HomePage(),
    ),
  ],
);