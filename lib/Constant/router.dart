import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../bottom_works_with_riverpod/go_router_riverpod.dart';
import '../bottom_works_with_riverpod/hide_show_bottom_nav_done.dart';
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
      ],
    ),
  ],
);
