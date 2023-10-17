import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import '../Constant/constants.dart';
import 'feed_detail_widget.dart';
import 'home_feed.dart';
class HomeMenu extends StatelessWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme:
          Theme.of(context).colorScheme.copyWith(primary: colors[0])),
      child: Navigator(
          key: homeKey,
          initialRoute: '/',
          onGenerateRoute: (RouteSettings settings) {
            WidgetBuilder builder;
            switch (settings.name) {
              case '/':
                builder = (BuildContext _) => const HomeFeeds();
                break;
              case FeedDetail.route:
                builder = (BuildContext _) {
                  final id = (settings.arguments as Map)['id'];
                  return FeedDetail(
                    feedId: id,
                  );
                };
                break;
              default:
                builder = (BuildContext _) => const HomeFeeds();
            }
            return MaterialPageRoute(builder: builder, settings: settings);
          }),
    );
  }
}