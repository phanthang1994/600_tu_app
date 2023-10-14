import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider.dart';
class CounterWidget extends ConsumerWidget {
  final int position;
  const CounterWidget(this.position, {super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        debugPrint(position.toString());
        ref.read(counterStateProvider.notifier).state = position;
      },
      child: Text(
        position.toString(),
        style: const TextStyle(fontSize: 22.0),
      ),
    );
  }
}