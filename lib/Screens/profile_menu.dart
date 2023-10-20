import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../Constant/constants.dart';
import '../Widgets/ProfileEditWidget.dart';
import '../Widgets/UserProfile.dart';


class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme:
          Theme.of(context).colorScheme.copyWith(primary: colors[3])),
      child: Navigator(
          key: profileKey,
          initialRoute: '/',
          onGenerateRoute: (RouteSettings settings) {
            WidgetBuilder builder;
            switch (settings.name) {
              case '/':
                builder = (BuildContext _) => const UserProfile();
                break;
              case ProfileEdit.route:
                builder = (BuildContext _) => const ProfileEdit();
                break;
              default:
                builder = (BuildContext _) => const UserProfile();
            }
            return MaterialPageRoute(builder: builder, settings: settings);
          }),
    );
  }
}