import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBarHandler(),
    );
  }
}

class BottomNavBarHandler extends StatefulWidget {
  @override
  _BottomNavBarHandlerState createState() => _BottomNavBarHandlerState();
}

class _BottomNavBarHandlerState extends State<BottomNavBarHandler> {
  late ScrollController _scrollController;
  bool _isVisible = true;
  double _scrollThreshold = 46.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      final scrollPosition = _scrollController.position.pixels;
      print('Scroll position (Y-axis): $scrollPosition'); // Print Y-axis position
      setState(() {
        _isVisible = scrollPosition <= _scrollThreshold;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate Bottom NavBar on Scroll'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        transform: Matrix4.translationValues(0.0, _isVisible ? 0.0 : _scrollThreshold, 0.0),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            // Handle navigation
            // Add your navigation logic here
          },
        ),
      ),
    );
  }
}
