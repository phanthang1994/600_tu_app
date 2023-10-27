import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Constant/constants.dart';
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
    double heightScreen = (MediaQuery.of(context).size.height - height) / 12;
    double widthScreen = (MediaQuery.of(context).size.width) / 5;
    return Stack(
      children: <Widget>[
        Positioned.fill(
          child: Image.asset(
            'assets/pictures/home_1.png',
            key: UniqueKey(),
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomLeft,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: height/3),
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

      ],
    );
  }
}
