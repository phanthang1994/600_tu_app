import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Widgets/icon_btn_with_counter.dart';
import '../Widgets/response_wideget.dart';
import '../provider.dart';

class HomeBottomMenuScreen extends ConsumerStatefulWidget {
  const HomeBottomMenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<HomeBottomMenuScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeBottomMenuScreen> {
  ScrollController scrollController = ScrollController();
  late final PageController pageController;
  int pageNo = 0;

  Timer? carasouelTmer;

  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 4) {
        pageNo = 0;
      }
      pageController.animateToPage(
        pageNo,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOutCirc,
      );
      pageNo++;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0, viewportFraction: 0.85);
    carasouelTmer = getTimer();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        ref.read(visibilityProvider.notifier).state = true;
      } else {
        ref.read(visibilityProvider.notifier).state = false;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    scrollController.removeListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        ref.read(visibilityProvider.notifier).state = true;
      } else {
        ref.read(visibilityProvider.notifier).state = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const double height = 70;
    double heightScreen = (MediaQuery.of(context).size.height - height) / 12;
    double widthScreen = (MediaQuery.of(context).size.width) / 5;
    double width = (MediaQuery.of(context).size.width);
    return Stack(
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
            controller: scrollController,
            children: [
              InkWell(
                child: Container(
                  height: 1.5 * heightScreen,
                  color: Colors.white60,
                  child: const Text('Để ảnh tự quảng cáo'),
                ),
                onTap: () {
                  debugPrint("tapped on first");
                },
              ),
              Padding(
                  padding: EdgeInsets.only(top: 0.5 * heightScreen),
                  child: wrapOrFlexible(1, 10, widthScreen, heightScreen, ref)),
            ],
          ),
        ),
        Positioned(
          top: 0.0,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors
                      .grey, // You can replace 'black' with the color you desire
                  width: 15.0, // The border height in pixels
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.white,
                    child: IconBtnWithCounter(
                      svgSrc: "assets/icons/Bell.svg",
                      numOfitem: 3,
                      press: () {
                        Navigator.push(context, MaterialPageRoute<void>(
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
