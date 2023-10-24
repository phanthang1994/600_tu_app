import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../Widgets/response_wideget.dart';
import '../provider.dart';
  class HomeFeeds extends StatefulWidget {
    const HomeFeeds({Key? key}) : super(key: key);
    static const String route = '/';

    @override
    State<HomeFeeds> createState() => _HomeFeedsState();
  }

  class _HomeFeedsState extends State<HomeFeeds> {
    final _scrollController = ScrollController();

    @override
    void initState() {
      super.initState();
      _addScrollListener();
    }

    void _addScrollListener() {
      _scrollController.addListener(() {
        if (_scrollController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (navbarNotifier.hideBottomNavBar) {
            navbarNotifier.hideBottomNavBar = false;
          }
        } else {
          if (!navbarNotifier.hideBottomNavBar) {
            navbarNotifier.hideBottomNavBar = true;
          }
        }
      });
    }

    @override
    void dispose() {
      _scrollController.dispose();
      super.dispose();
    }

    void inRa(widthScreen) {
      debugPrint("chiều rộng màn hình ___ $widthScreen");
    }


  @override
  Widget build(BuildContext context) {
    const double height = 70;
    double heightScreen = (MediaQuery.of(context).size.height - height) / 12;
    double widthScreen = (MediaQuery.of(context).size.width) / 5;
    double width = (MediaQuery.of(context).size.width);
    inRa(widthScreen);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
            ),
            Positioned.fill(
              child: Image.asset(
                'assets/pictures/home_1.png',
                key: UniqueKey(),
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomLeft,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: height),
              child: ListView(
                controller: _scrollController,
                children: [
                  InkWell(
                    child: Container(
                      height: 2 * heightScreen,
                      color: Colors.red,
                      child: const Text('để ảnh tự quảng cáo'),
                    ),
                    onTap: () {
                      debugPrint("tapped on first");
                    },
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 0.5 * heightScreen),
                      // child: wrapOrFlexible(widthScreen, heightScreen, ref)),
                  )],
              ),
            ),
            Positioned(
                top: 0.0,
                child: Container(
                    color: Colors.blue,
                    height: height,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 15),
                            child:
                            Text("tors, and hardware for iOS and Android."),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            color: Colors.white,
                            height: height,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) {
                                          return Scaffold(
                                            appBar: AppBar(
                                              title: const Text('Next page'),
                                            ),
                                            body: const Center(
                                              child: Text(
                                                'This is the next page',
                                                style: TextStyle(fontSize: 24),
                                              ),
                                            ),
                                          );
                                        },
                                      ));
                                },
                                icon: const Icon(IconData(0xee74,
                                    fontFamily: 'MaterialIcons'))),
                          ),
                        )
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}