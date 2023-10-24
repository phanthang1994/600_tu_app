import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Widgets/PartDetail.dart';
import '../Widgets/response_wideget.dart';
import '../provider.dart';
class HomeBottomMenuScreen extends ConsumerStatefulWidget  {

  const HomeBottomMenuScreen({Key? key,
  }) : super(key: key);

  @override
  ConsumerState<HomeBottomMenuScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeBottomMenuScreen> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if(scrollController.position.userScrollDirection == ScrollDirection.forward) {
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
      if(scrollController.position.userScrollDirection == ScrollDirection.forward) {
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
                  height: 2 * heightScreen,
                  color: Colors.red,
                  child: const Text('Để ảnh tự quảng cáo'),
                ),
                onTap: () {
                  debugPrint("tapped on first");
                },
              ),
              Padding(
                  padding: EdgeInsets.only(top: 0.5 * heightScreen),
                  child: wrapOrFlexible(1,10,widthScreen,heightScreen,ref)),
            ],
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
                        Text("Quảng cáo đầu trang"),
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
    );
  }
}