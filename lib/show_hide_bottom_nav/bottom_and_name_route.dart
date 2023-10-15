  import 'package:flutter/material.dart';

  void main() {
    runApp(
      MaterialApp(
        title: 'Named Routes Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => const FirstScreen(),
          '/second': (context) => const SecondScreen(),
        },
      ),
    );
  }

  class FirstScreen extends StatefulWidget {
    const FirstScreen({Key? key}) : super(key: key);

    @override
    _FirstScreenState createState() => _FirstScreenState();
  }

  class _FirstScreenState extends State<FirstScreen> {
    int _currentIndex = 0;

    final List<Widget> _screens = [
      const HomeScreen(),
      const BusinessScreen(),
      const SchoolScreen(),
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('First Screen'),
        ),
        body: _currentIndex == 0
            ? Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');  // Navigate to SecondScreen
            },
            child: const Text('Launch SecondScreen'),
          ),
        )
            : _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
      );
    }
  }

  class HomeScreen extends StatelessWidget {
    const HomeScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Center(
        child: Text('Home Screen'),
      );
    }
  }

  class BusinessScreen extends StatelessWidget {
    const BusinessScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Center(
        child: Text('Business Screen'),
      );
    }
  }

  class SchoolScreen extends StatelessWidget {
    const SchoolScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Center(
        child: Text('School Screen'),
      );
    }
  }

  class SecondScreen extends StatelessWidget {
    const SecondScreen({Key? key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back!'),
          ),
        ),
      );
    }
  }
