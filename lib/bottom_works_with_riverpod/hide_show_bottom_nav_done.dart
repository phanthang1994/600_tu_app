import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Constant/constants.dart';
import '../Screens/home_bottom_menu.dart';
// import '../Screens/second_screen.dart';
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10.0), // Set margin on the left side
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '600 Tu Vựng Toeic',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(right: 10.0), // Set margin on the right side
                  child: Align(
                    alignment: Alignment.centerRight,
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

          Container(
            // height: height,
            width: width,
            decoration: visible ? const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey, // You can replace 'black' with the color you desire
                  width: 5.0, // The border height in pixels
                ) ,
                bottom: BorderSide(
                  color: Colors.grey, // You can replace 'black' with the color you desire
                  width: 6.0,
                  // The border height in pixels
                ),
              ),
            ) : const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey, // You can replace 'black' with the color you desire
                  width: 6.0, // The border height in pixels
                ),
              ),
            ),
            child:Padding(
              padding: const EdgeInsets.fromLTRB(5, 8, 5, 6),
              child: ListTile(
                onTap: () {},
                selected: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                selectedTileColor: Colors.indigoAccent.shade100,
                title: Text(
                  "ADs",
                  style: Theme.of(context).textTheme.titleMedium!.merge(
                    const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                subtitle: Text(
                  "A Greet welcome to you all.",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
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
