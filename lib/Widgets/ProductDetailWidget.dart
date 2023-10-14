import 'package:flutter/material.dart';

import '../Models/nav_models.dart';
import '../provider.dart';
import 'ProductCommentWidget.dart';
class ProductDetail extends StatelessWidget {
  final String id;
  const ProductDetail({Key? key, this.id = '1'}) : super(key: key);
  static const String route = '/products/detail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product $id'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('My AWESOME Product $id'),
          const Center(
            child: Placeholder(
              fallbackHeight: 200,
              fallbackWidth: 300,
            ),
          ),
          TextButton(
              onPressed: () {
                navbarNotifier.hideBottomNavBar = false;
                navigate(context, ProductComments.route,
                    isRootNavigator: false, arguments: {'id': id.toString()});
              },
              child: const Text('show comments'))
        ],
      ),
    );
  }
}