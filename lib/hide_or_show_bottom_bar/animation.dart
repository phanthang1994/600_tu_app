import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// https://www.geeksforgeeks.org/flutter-hidden-bottom-appbar/
void main() => runApp(MaterialApp(
  home: HiddenBottomAppBar(),
));

class HiddenBottomAppBar extends StatefulWidget {
  const HiddenBottomAppBar({Key? key}) : super(key: key);

  @override
  HiddenBottomAppBarState createState() => HiddenBottomAppBarState();
}

class HiddenBottomAppBarState extends State<HiddenBottomAppBar> {
  late ScrollController _HideBottomAppBarController;
  var _isVisible;

  @override
  initState() {
    super.initState();
    _isVisible = true;
    _HideBottomAppBarController = ScrollController();
    _HideBottomAppBarController.addListener(() {
      if (_HideBottomAppBarController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = false;
        });
      }
      if (_HideBottomAppBarController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          controller: _HideBottomAppBarController,
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
          child: _isVisible
              ? AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: _isVisible ? 60.0 : 0.0,
            child: _isVisible
                ? Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child: Center(
                child: Text("Bottom AppBar"),
              ),
            )
                : Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
            ),
          )
              : Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ),
    );
  }
}
