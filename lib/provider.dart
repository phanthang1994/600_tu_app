import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'Constant/router.dart';
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
final visibilityProvider = StateProvider<bool>((ref) => true);
final goRouterProvider = Provider<GoRouter>((ref) {
  return router;
});