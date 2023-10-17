import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider.dart';


void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: MainScreen(),
      ),
    ),
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final visible = ref.watch(visibilityProvider);

        return Scaffold(
          appBar: AppBar(
            title: const Text('Main Screen'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: visible,
                  child: const Text('Navigation is visible'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(visibilityProvider.notifier).state = false;
                  },
                  child: const Text('Hide Navigation'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(visibilityProvider.notifier).state = true;
                  },
                  child: const Text('Show Navigation'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
