import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Constant/constants.dart';
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

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/pictures/home_1.png', // Replace with the path to your image
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Expanded(
                child: IndexedStack(
                  index: indexBottomNavbar,
                  children: [
                    Center(
                      child: ElevatedButton(
                        onPressed: () => ref.read(goRouterProvider).go('/details'),
                        child: const Text('Go to the Details screen'),
                      ),
                    ),
                    const HomeScreen(),
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
                        style: TextStyle(fontSize: kBottomNavigationBarHeight, color: Colors.black),
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
    );
  }

}

class HomeScreen extends ConsumerStatefulWidget  {

  const HomeScreen({Key? key,
  }) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if(scrollController.position.userScrollDirection == ScrollDirection.forward) {
        ref.read(visibilityProvider.notifier).state = true;
      } else {
        ref.read(visibilityProvider.notifier).state = false;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    scrollController.removeListener(() {
      if(scrollController.position.userScrollDirection == ScrollDirection.forward) {
        ref.read(visibilityProvider.notifier).state = true;
      } else {
        ref.read(visibilityProvider.notifier).state = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: [
        Container(
          color: Colors.red,
          height: 270,
        ),
        Container(
          color: Colors.blue,
          height: 200,
        ),
        Container(
          color: Colors.purple,
          height: 200,
        ),
        Container(
          color: Colors.green,
          height: 280,
        ),
        Container(
          color: Colors.red,
          height: 270,
        ),
        Container(
          color: Colors.blue,
          height: 200,
        ),
        Container(
          color: Colors.purple,
          height: 200,
        ),
        Container(
          color: Colors.green,
          height: 280,
        ),
        Container(
          color: Colors.red,
          height: 270,
        ),
        Container(
          color: Colors.blue,
          height: 200,
        ),
        Container(
          color: Colors.purple,
          height: 200,
        ),
        Container(
          color: Colors.green,
          height: 280,
        ),
        Container(
          color: Colors.red,
          height: 270,
        ),
        Container(
          color: Colors.blue,
          height: 200,
        ),
        Container(
          color: Colors.purple,
          height: 200,
        ),
        Container(
          color: Colors.green,
          height: 280,
        ),
      ],
    );
  }
}
