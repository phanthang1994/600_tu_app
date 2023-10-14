import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../Models/nav_models.dart';
import '../provider.dart';
import 'ProductDetailWidget.dart';
class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);
  static const String route = '/';

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView.builder(
          controller: _scrollController,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    navbarNotifier.hideBottomNavBar = false;
                    navigate(context, ProductDetail.route,
                        isRootNavigator: false,
                        arguments: {'id': index.toString()});
                  },
                  child: Text('product detail'),
                ));
          }),
    );
  }
}