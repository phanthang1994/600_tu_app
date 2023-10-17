import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final visibilityProvider = StateProvider<bool>((ref) => true);

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: MainScreen(),
      ),
    ),
  );
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final visible = ref.watch(visibilityProvider);

        return Scaffold(
          appBar: AppBar(
            title: Text('Main Screen'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: visible,
                  child: Text('Navigation is visible'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(visibilityProvider.notifier).state = false;
                  },
                  child: Text('Hide Navigation'),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(visibilityProvider.notifier).state = true;
                  },
                  child: Text('Show Navigation'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
