import 'package:go_router/go_router.dart';

import '../Views/HomePage/home_page.dart';

final routes = GoRouter(
  initialLocation: '/HomePage',
  routes: [
    GoRoute(
      path: '/HomePage',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
