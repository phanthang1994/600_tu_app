import 'package:flutter/material.dart';
import '../Constant/constants.dart';
import '../Models/nav_models.dart';
import 'MenuItem.dart';


class AnimatedNavBar extends StatefulWidget {
  const AnimatedNavBar({
    Key? key,
    required this.model,
    required this.menuItems,
    required this.onItemTapped,
  }) : super(key: key);
  final List<MenuItem> menuItems;
  final NavbarNotifier model;
  final Function(int) onItemTapped;

  @override
  AnimatedNavBarState createState() => AnimatedNavBarState();
}

class AnimatedNavBarState extends State<AnimatedNavBar>
    with SingleTickerProviderStateMixin {
  @override
  void didUpdateWidget(covariant AnimatedNavBar oldWidget) {
    if (widget.model.hideBottomNavBar != isHidden) {
      if (!isHidden) {
        _showBottomNavBar();
      } else {
        _hideBottomNavBar();
      }
      isHidden = !isHidden;
    }
    super.didUpdateWidget(oldWidget);
  }

  void _hideBottomNavBar() {
    _controller.reverse();
    return;
  }

  void _showBottomNavBar() {
    _controller.forward();
    return;
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this)
      ..addListener(() => setState(() {}));
    animation = Tween(begin: 0.0, end: 100.0).animate(_controller);
  }

  late AnimationController _controller;
  late Animation<double> animation;
  bool isHidden = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
            bottom: 0.0,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                color: Colors.white.withOpacity(0.05))),
        AnimatedBuilder(
            animation: animation,
            builder: (BuildContext context, Widget? child) {
              return Transform.translate(
                offset: Offset(0, animation.value),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 12,
                      spreadRadius: 2,
                      offset: const Offset(2, -2),
                    ),
                  ]),
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.shifting,
                    currentIndex: widget.model.index,
                    onTap: (x) {
                      widget.onItemTapped(x);
                    },
                    elevation: 16.0,
                    showUnselectedLabels: true,
                    unselectedItemColor: Colors.white54,
                    selectedItemColor: Colors.blue,
                    items: widget.menuItems
                        .map((MenuItem menuItem) => BottomNavigationBarItem(
                      backgroundColor: colors[widget.model.index],
                      icon: Icon(menuItem.iconData),
                      label: menuItem.text,
                    ))
                        .toList(),
                  ),
                ),
              );
            }),
      ],
    );
  }
}