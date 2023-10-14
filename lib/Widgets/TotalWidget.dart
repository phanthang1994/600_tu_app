import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider.dart';
class TotalQuestions extends ConsumerWidget {
  const TotalQuestions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterStateProvider);
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text('Tổng số câu hỏi: $count'),
    );
  }
}