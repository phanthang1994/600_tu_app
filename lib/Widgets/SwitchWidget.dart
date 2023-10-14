import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'TotalTimeWidger.dart';


final timerStateProvider = StateProvider.autoDispose<bool>((ref) {
  return false;
});
void main() => runApp(const SwitchApp());

class SwitchApp extends StatelessWidget {
  const SwitchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Switch Sample')),
        body: Center(
          child: SwitchExample(),
        ),
      ),
    );
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

bool light = false;

class _SwitchExampleState extends State<SwitchExample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Kiểm tra'),
            Switch(
              // This bool value toggles the switch.
              value: light,
              activeColor: Colors.red,
              onChanged: (bool value) {
                // This is called when the user toggles the switch.
                setState(() {
                  light = value;
                });
              },
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: light,
            child: const TotalTime(),
          ),
        )
      ],
    );
  }
}

class SwitchAppThang extends StatelessWidget {
  const SwitchAppThang({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer(builder: (_, ref, __) {
        bool showOrHideTimer = ref.watch(timerStateProvider);
        return Column(
          children: [
            Row(
              children: [
                const Text('Kiểm tra'),
                Switch(
                  // This bool value toggles the switch.
                  value: showOrHideTimer,
                  activeColor: Colors.red,
                  onChanged: (bool value) {
                    ref.read(timerStateProvider.notifier).state = (showOrHideTimer == false) ? true : false;
                  },
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: showOrHideTimer,
                child: const TotalTime(),
              ),
            )
          ],
        );
      }),
    );
  }
}

