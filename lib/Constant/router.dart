import 'dart:developer';

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
            if (state.extra is Map<String, dynamic>) {
              Map<String, dynamic> data = state.extra as Map<String, dynamic>;
              return PartDetail(
                completedQuestions: data['hoanThanh'],
                index: data['index'],
              );
            } else {
              // Handle the case where state.extra is not of the expected type
              return const Scaffold(
                body: Center(
                  child: Text('Invalid route data'),
                ),
              );
            }
          },
        ),

      ],
    ),
  ],
);
