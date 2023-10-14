import 'package:flutter/material.dart';
import '../Constant/constants.dart';
import 'animation.dart';
import '../provider.dart';


class NavBarHandler extends StatefulWidget {
  const NavBarHandler({Key? key}) : super(key: key);
  static const String route = '/';

  @override
  State<NavBarHandler> createState() => _NavBarHandlerState();
}

class _NavBarHandlerState extends State<NavBarHandler>
    with SingleTickerProviderStateMixin {

  late List<BottomNavigationBarItem> _bottomList = <BottomNavigationBarItem>[];



  late Animation<double> fadeAnimation;
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    fadeAnimation = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
    );

    _bottomList = List.generate(
        buildBody.length,
            (index) => BottomNavigationBarItem(
          icon: Icon(menuItemList[index].iconData),
          label: menuItemList[index].text,
        )).toList();
    _controller.forward();
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        behavior: SnackBarBehavior.floating,
        duration: Duration(milliseconds: 600),
        margin: EdgeInsets.only(
            bottom: kBottomNavigationBarHeight, right: 2, left: 2),
        content: Text('Tap back button again to exit'),
      ),
    );
  }

  void hideSnackBar() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  DateTime oldTime = DateTime.now();
  DateTime newTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final bool isExitingApp = await navbarNotifier.onBackButtonPressed();
        if (isExitingApp) {
          newTime = DateTime.now();
          int difference = newTime.difference(oldTime).inMilliseconds;
          oldTime = newTime;
          if (difference < 1000) {
            hideSnackBar();
            return isExitingApp;
          } else {
            showSnackBar();
            return false;
          }
        } else {
          return isExitingApp;
        }
      },
      child: Material(
        child: AnimatedBuilder(
            animation: navbarNotifier,
            builder: (context, snapshot) {
              return Stack(
                children: [
                  IndexedStack(
                    index: navbarNotifier.index,
                    children: [
                      for (int i = 0; i < buildBody.length; i++)
                        FadeTransition(
                            opacity: fadeAnimation, child: buildBody[i])
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: AnimatedNavBar(
                        model: navbarNotifier,
                        onItemTapped: (x) {
                          // User pressed  on the same tab twice
                          if (navbarNotifier.index == x) {
                            navbarNotifier.popAllRoutes(x);
                          } else {
                            navbarNotifier.index = x;
                            _controller.reset();
                            _controller.forward();
                          }
                        },
                        menuItems: menuItemList),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
