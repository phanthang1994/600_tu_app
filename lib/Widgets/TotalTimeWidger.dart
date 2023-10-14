import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider.dart';
class TotalTime extends ConsumerWidget {
  const TotalTime({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterStateProvider);
    final timeForTest = 30*count;
    String formatTime(int seconds) {
      return
        "Thời gian test: ${'${(Duration(seconds: seconds))}'
            .split('.')[0].padLeft(8, '0')}";
    }
    return Text(formatTime(timeForTest));
  }
}