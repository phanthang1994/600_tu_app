import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider.dart';
// https://github.com/Bytx-youtube/scrolltohide/blob/main/lib/mainscreen.dart
//https://www.youtube.com/watch?v=FJrtlsMNS-0
void main() {
  runApp(const ProviderScope(child: MaterialApp(
    home: MainScreen(),
  ))) ;
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {
  bool visible = true;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      // 2. specify the builder and obtain a WidgetRef
      builder: (_, WidgetRef ref, __) {
        // 3. use ref.watch() to get the value of the provider
        final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
        return Scaffold(
          body: IndexedStack(
            index: indexBottomNavbar,
            children: [
              const Center(
                child: Text("Fav"),
              ),
              HomeScreen(
                hideNavigation: hideNav,
                showNavigation: showNav,
              ),
              const Center(
                child: Text("Profile"),
              ),
            ],
          ),
          bottomNavigationBar: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.fastLinearToSlowEaseIn,
            height: visible ? kBottomNavigationBarHeight : 0,
            child: Wrap(
              children: [
                BottomNavigationBar(
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                      backgroundColor: Colors.red,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.business),
                      label: 'Business',
                      backgroundColor: Colors.green,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.school),
                      label: 'School',
                      backgroundColor: Colors.purple,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: 'Settings',
                      backgroundColor: Colors.pink,
                    ),
                  ],
                  currentIndex: indexBottomNavbar,
                  selectedItemColor: Colors.amber[800],
                  onTap: (value) {
                    ref.read(indexBottomNavbarProvider.notifier).update((state) => value);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void hideNav() {
    setState(() {
      visible = false;
    });
  }

  void showNav() {
    setState(() {
      visible = true;
    });
  }

}

class HomeScreen extends StatefulWidget {
  final VoidCallback showNavigation;
  final VoidCallback hideNavigation;

  const HomeScreen({Key? key,
    required this.showNavigation,
    required this.hideNavigation
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if(scrollController.position.userScrollDirection == ScrollDirection.forward) {
        widget.showNavigation();
      } else {
        widget.hideNavigation();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    scrollController.removeListener(() {
      if(scrollController.position.userScrollDirection == ScrollDirection.forward) {
        widget.showNavigation();
      } else {
        widget.hideNavigation();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
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
      ),
    );
  }
}
