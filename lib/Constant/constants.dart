import 'package:flutter/material.dart';
import '../Screens/home_henu.dart';
import '../Screens/products_menu.dart';
import '../Screens/profile_menu.dart';
import '../Widgets/MenuItem.dart';
import '../provider.dart';

const buildBody = <Widget>[HomeMenu(), ProductsMenu(), ProfileMenu()];
const menuItemList = <MenuItem>[
  MenuItem(Icons.home, 'Home'),
  MenuItem(Icons.shopping_basket, 'Products'),
  MenuItem(Icons.person, 'Me'),
];
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
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

String infoPart1 =  "GeeksForGeeks is a good platform to learn programming."
    " It is an educational website."
    "GeeksForGeeks is a good platform to learn programming."
    " It is an educational website."
    "GeeksForGeeks is a good platform to learn programming."
    " It is an educational website.";

const double height = 70;

final List<Map<String, dynamic>> gridMap = [
  {
    "PartNumber": "Part 1",
    "Description": "Mô tả tranh",
    "images":
    "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80",
  },
  {
    "PartNumber": "Part 2",
    "Description": "Hỏi & Đáp",
    "images":
    "https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "PartNumber": "Part 3",
    "Description": "Hội Thoại Ngắn",
    "images":
    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  },
  {
    "PartNumber": "Part 4",
    "Description": "Bài Nói Ngắn",
    "images":
    "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "PartNumber": "Part 5",
    "Description": "Điền Vào Câu",
    "images":
    "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "PartNumber": "Part 6",
    "Description": "Điền Vào Đoạn Văn",
    "images":
    "https://images.unsplash.com/photo-1602293589930-45aad59ba3ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "PartNumber": "Part 7",
    "Description": "Đọc Hiểu ĐOạn Văn",
    "images":
    "https://images.unsplash.com/photo-1554568218-0f1715e72254?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "PartNumber": "Test Thử",
    "Description": "Điểm Ngay",
    "images":
    "https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=725&q=80",
  },
  {
    "PartNumber": "Mẹo Hay",
    "Description": "Các Part",
    "images":
    "https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "PartNumber": "Từ Vựng",
    "Description": "Chế Tác",
    "images":
    "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  },
  {
    "PartNumber": "Ngữ Pháp",
    "Description": "Căn Bản",
    "images":
    "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
  {
    "PartNumber": "Điểm Cao",
    "Description": "Lộ Trình",
    "images":
    "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  },
];
