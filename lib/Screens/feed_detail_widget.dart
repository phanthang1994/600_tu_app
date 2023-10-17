import 'package:flutter/material.dart';

import '../Constant/constants.dart';
class FeedDetail extends StatelessWidget {
  final String feedId;
  const FeedDetail({Key? key, this.feedId = '1'}) : super(key: key);
  static const String route = '/feeds/detail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed $feedId'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Placeholder(
                fallbackHeight: 200,
                fallbackWidth: 300,
              ),
              Text(placeHolderText),
            ],
          ),
        ),
      ),
    );
  }
}