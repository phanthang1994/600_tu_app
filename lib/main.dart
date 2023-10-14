import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Widgets/BottomNav.dart';
import 'Widgets/ProfileEditWidget.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BottomNavbar Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        routes: {
          '/': (context) => const NavBarHandler(),
        }
        );
  }
}