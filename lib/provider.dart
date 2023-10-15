import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Models/nav_models.dart';
final NavbarNotifier navbarNotifier = NavbarNotifier();
final timerStateProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});
final counterStateProvider = StateProvider<int>((ref) {
  return 1;
});
final indexBottomNavbarProvider = StateProvider<int>((ref) {
  return 0;
});