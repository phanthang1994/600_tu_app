import 'package:flutter/material.dart';
import '../Screens/HomeMenu.dart';
import '../Screens/ProductsMenu.dart';
import '../Screens/ProfileMenu.dart';
import '../Widgets/MenuItem.dart';
import '../provider.dart';

const buildBody = <Widget>[HomeMenu(), ProductsMenu(), ProfileMenu()];
const menuItemList = <MenuItem>[
  MenuItem(Icons.home, 'Home'),
  MenuItem(Icons.shopping_basket, 'Products'),
  MenuItem(Icons.person, 'Me'),
];

final homeKey = GlobalKey<NavigatorState>();
final productsKey = GlobalKey<NavigatorState>();
final profileKey = GlobalKey<NavigatorState>();
const Color mediumPurple = Color.fromRGBO(79, 0, 241, 1.0);
List<Color> colors = [mediumPurple, Colors.orange, Colors.teal, Colors.blue];
const String placeHolderText =
    'Lorem ipsum dolor sit amet mollit anim id est laborum.';
Widget buildBottomNavigationBar(ref) {
  return BottomNavigationBar(
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
    currentIndex: ref.watch(indexBottomNavbarProvider),
    selectedItemColor: Colors.amber[800],
    onTap: (value) {
      ref.read(indexBottomNavbarProvider.notifier).update((state) => value);
    },
  );
}

