import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Constant/constants.dart';
import '../Screens/home_bottom_menu.dart';
import '../Screens/second_screen.dart';
import '../Widgets/icon_btn_with_counter.dart';
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
    double width = (MediaQuery.of(context).size.width);
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          AnimatedContainer(
            height: visible ? 56.0 : 0.0,
            duration: const Duration(milliseconds: 200),
            child: Container(
              // child: ,
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, // You can replace 'black' with the color you desire
                  width: 15.0, // The border height in pixels
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.white,
                    child: IconBtnWithCounter(
                      svgSrc: "assets/icons/Bell.svg",
                      numOfitem: 3,
                      press: () {
                        Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                            return Scaffold(
                              appBar: AppBar(
                                title: const Text('Next page'),
                              ),
                              body: const Center(
                                child: Text(
                                  'This is the next page',
                                  style: TextStyle(fontSize: 24),
                                ),
                              ),
                            );
                          },
                        ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
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
    ));
  }
}
