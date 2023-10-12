import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class VisibilityNotifier extends StateNotifier<bool> {
  VisibilityNotifier() : super(true);

  void setVisible() => state = true;
  void setHidden() => state = false;
}

final scrollControllerProvider = Provider<ScrollController>((ref) {
  return ScrollController();
});

final bottomNavBarVisibilityProvider = StateNotifierProvider<VisibilityNotifier, bool>((ref) {
  return VisibilityNotifier();
});

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavBarHandler(),
    );
  }
}

class BottomNavBarHandler extends ConsumerWidget {
  const BottomNavBarHandler({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = ref.watch(scrollControllerProvider);
    final isVisible = ref.watch(bottomNavBarVisibilityProvider);

    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection == ScrollDirection.forward) {
        ref.read(bottomNavBarVisibilityProvider.notifier).setVisible();
      } else if (scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        ref.read(bottomNavBarVisibilityProvider.notifier).setHidden();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll to Show/Hide Bottom NavBar'),
      ),
      body: ListView.builder(
        controller: scrollController,
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
      bottomNavigationBar: isVisible
          ? BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {},
      )
          : const SizedBox(height: 0),
    );
  }
}
