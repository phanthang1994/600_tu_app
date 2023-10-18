
//https://codewithandrea.com/articles/flutter-navigate-without-context-gorouter-riverpod/

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

/// The route configuration.

/// The main app.
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

/// The home screen
class HomeScreen extends ConsumerWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: goTo(ref) ,
      ),
    );
  }
}

/// The details screen
class DetailsScreen extends ConsumerWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: backTo(ref),
      ),
    );
  }
}

Widget goTo(ref){
  return ElevatedButton(
    onPressed: () =>  ref.read(goRouterProvider).go('/details'),
    child: const Text('Go to the Details screen'),
  );
}


Widget backTo(ref){
  return ElevatedButton(
    onPressed: () =>  ref.read(goRouterProvider).pop(),
    child: const Text('Go back to the Home screen'),
  );
}