import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavBarVisibilityProvider = StateProvider<bool>((ref) {
  // Set the initial visibility state (true for visible, false for hidden)
  return true;
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavBarHandler(),
    );
  }
}

class BottomNavBarHandler extends StatefulWidget {
  const BottomNavBarHandler({super.key});

  @override
  _BottomNavBarHandlerState createState() => _BottomNavBarHandlerState();
}

class _BottomNavBarHandlerState extends State<BottomNavBarHandler> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();

    // Listen to scroll events and update the visibility of the bottom navigation bar
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      } else if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll to Show/Hide Bottom NavBar'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
      bottomNavigationBar: _isVisible
          ? BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {},
      )
          : SizedBox(height: 0),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
