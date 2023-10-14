import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../Constant/constants.dart';
import '../Widgets/ProductCommentWidget.dart';
import '../Widgets/ProductDetailWidget.dart';
import '../Widgets/ProductList.dart';



class ProductsMenu extends StatelessWidget {
  const ProductsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme:
          Theme.of(context).colorScheme.copyWith(primary: colors[1])),
      child: Navigator(
          key: productsKey,
          initialRoute: '/',
          onGenerateRoute: (RouteSettings settings) {
            WidgetBuilder builder;
            switch (settings.name) {
              case '/':
                builder = (BuildContext _) => const ProductList();
                break;
              case ProductDetail.route:
                final id = (settings.arguments as Map)['id'];
                builder = (BuildContext _) {
                  return ProductDetail(
                    id: id,
                  );
                };
                break;
              case ProductComments.route:
                final id = (settings.arguments as Map)['id'];
                builder = (BuildContext _) {
                  return ProductComments(
                    id: id,
                  );
                };
                break;
              default:
                builder = (BuildContext _) => const ProductList();
            }
            return MaterialPageRoute(builder: builder, settings: settings);
          }),
    );
  }
}