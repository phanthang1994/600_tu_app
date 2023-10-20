import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return ListView(
      controller: scrollController,
      children: [
        Container(
          color: Colors.red,
          height: 270,
        ),
        Container(
          color: Colors.blue,
          height: 200,
        ),
        Container(
          color: Colors.purple,
          height: 200,
        ),
        Container(
          color: Colors.green,
          height: 280,
        ),
        Container(
          color: Colors.red,
          height: 270,
        ),
        Container(
          color: Colors.blue,
          height: 200,
        ),
        Container(
          color: Colors.purple,
          height: 200,
        ),
        Container(
          color: Colors.green,
          height: 280,
        ),
        Container(
          color: Colors.red,
          height: 270,
        ),
        Container(
          color: Colors.blue,
          height: 200,
        ),
        Container(
          color: Colors.purple,
          height: 200,
        ),
        Container(
          color: Colors.green,
          height: 280,
        ),
        Container(
          color: Colors.red,
          height: 270,
        ),
        Container(
          color: Colors.blue,
          height: 200,
        ),
        Container(
          color: Colors.purple,
          height: 200,
        ),
        Container(
          color: Colors.green,
          height: 280,
        ),
      ],
    );
  }
}