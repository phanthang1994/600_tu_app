import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Models/nav_models.dart';
final NavbarNotifier navbarNotifier = NavbarNotifier();
final counterStateProvider = StateProvider<int>((ref) {
  return 1;
});