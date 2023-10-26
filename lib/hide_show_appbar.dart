import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAppHomePage(),
    );
  }
}

class MyAppHomePage extends StatefulWidget {
  @override
  _MyAppHomePageState createState() => _MyAppHomePageState();
}

class _MyAppHomePageState extends State<MyAppHomePage> {
  ScrollController _scrollController = ScrollController();
  bool isAppBarVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
      // Scrolling down, hide the AppBar
      setState(() {
        isAppBarVisible = false;
      });
    } else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
      // Scrolling up, show the AppBar
      setState(() {
        isAppBarVisible = true;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isAppBarVisible
          ? AppBar(
        title: Text('My App'),
      )
          : null,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
