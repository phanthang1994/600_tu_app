import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Constant/constants.dart';
import '../Screens/home_bottom_menu.dart';
import '../Screens/second_screen.dart';
import '../provider.dart';

//https://www.youtube.com/watch?v=FJrtlsMNS-0
// void main() {
//   runApp(
//     ProviderScope(child: MaterialApp(
//       title: 'Named Routes Demo',
//       initialRoute: '/',
//       routes: {
//         '/': (context) => const MainScreen(),
//         '/second': (context) => const SecondScreen(),
//       },
//     )),
//   );
// }

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    final visible = ref.watch(visibilityProvider);

    return SafeArea(
      child: Scaffold(
        appBar: visible ? AppBar(title: const Text('My App')) : null,
        body: Stack(
          children: [
            // Background Image
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/pictures/home_1.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: IndexedStack(
                    index: indexBottomNavbar,
                    children: [
                      const HomeBottomMenuScreen(),
                      Center(
                        child: ElevatedButton(
                          onPressed: () =>
                              ref.read(goRouterProvider).go('/details'),
                          child: const Text('Go to the Details screen'),
                        ),
                      ),
                      const Center(
                        child: Text("Profile"),
                      ),
                      const Center(
                        child: Text("Setting"),
                      ),
                    ],
                  ),
                ),
                // Bottom Navigation Text
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: visible ? kBottomNavigationBarHeight : 0,
                  child: Wrap(
                    children: [
                      buildBottomNavigationBar(ref),
                    ],
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: kBottomNavigationBarHeight,
                    child: Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          "Advertisement",
                          style: TextStyle(
                              fontSize: kBottomNavigationBarHeight,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

