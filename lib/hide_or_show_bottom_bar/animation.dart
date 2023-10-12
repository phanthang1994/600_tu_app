import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: HiddenBottomAppBar(),
));

class HiddenBottomAppBar extends StatefulWidget {
  const HiddenBottomAppBar({Key? key}) : super(key: key);

  @override
  HiddenBottomAppBarState createState() => HiddenBottomAppBarState();
}

class HiddenBottomAppBarState extends State<HiddenBottomAppBar> {
  late ScrollController _hideBottomAppBarScrollController;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _hideBottomAppBarScrollController = ScrollController();
    _hideBottomAppBarScrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _hideBottomAppBarScrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (_hideBottomAppBarScrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      setState(() {
        _isVisible = false;
      });
    } else if (_hideBottomAppBarScrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      setState(() {
        _isVisible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          controller: _hideBottomAppBarScrollController,
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('List Item $index'),
              leading: Icon(Icons.image),
            );
          },
        ),
        bottomNavigationBar: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: _isVisible ? 60.0 : 0.0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: _isVisible ? Colors.blue : Colors.transparent,
            child: Center(
              child: Text("Bottom AppBar"),
            ),
          ),
        ),
      ),
    );
  }
}
