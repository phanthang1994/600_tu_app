import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuvungapp600/provider.dart';
void main() => runApp(const ProviderScope(child: MyApp()));

/// Flutter code sample for [BottomNavigationBar].
class MyApp extends ConsumerWidget  {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}
