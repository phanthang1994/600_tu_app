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
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    final visible = ref.watch(visibilityProvider);
    return Scaffold(
            body: IndexedStack(
              index: indexBottomNavbar,
              children: [
                Center(
                  child:ElevatedButton(
                  onPressed: () =>  ref.read(goRouterProvider).go('/details'),
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
          bottomNavigationBar: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.fastLinearToSlowEaseIn,
            height: visible ? kBottomNavigationBarHeight : 0,
            child: Wrap(
              children: [
                buildBottomNavigationBar(ref),
              ],
            ),
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
