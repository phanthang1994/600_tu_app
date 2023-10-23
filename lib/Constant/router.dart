import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../Widgets/PartDetail.dart';
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
        GoRoute(
          path: 'part_detail',
          builder: (BuildContext context, GoRouterState state) {
            return PartDetail(
                index: 1,
                hoanThanh: 10,
                width: ref.watch(screenHeightProvider),
                height: heightScreen);
          },
        ),
      ],
    ),
  ],
);
