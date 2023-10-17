import 'package:flutter/material.dart';
import '../Screens/HomeMenu.dart';
import '../Screens/ProductsMenu.dart';
import '../Screens/ProfileMenu.dart';
import '../Widgets/MenuItem.dart';
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
