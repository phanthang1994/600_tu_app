import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Constant/bottom_bodies.dart';
import '../provider.dart';
import '../show_hide_bottom_nav/bottom_and_name_route.dart';
void main() {
  runApp(
    ProviderScope(child: MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/second': (context) => const SecondScreen(),
      },
    )),
  );
}
class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavbar,
        selectedItemColor: Colors.amber[800],
        onTap: (value) {
          ref.read(indexBottomNavbarProvider.notifier).update((state) => value);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
              backgroundColor: Colors.green,
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
              backgroundColor: Colors.purple,
          ),
        ],
      ),
      body: indexBottomNavbar == 0
          ? Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second');  // Navigate to SecondScreen
          },
          child: const Text('Launch SecondScreen'),
        ),
      )
          : bodies[indexBottomNavbar],
      // body: bodies[indexBottomNavbar],
    );
  }
}
