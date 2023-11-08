import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
//https://riverpod.dev/docs/essentials/first_request
class Activity {
  Activity({
    required this.key,
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
  });

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
      key: json['key'] as String,
      activity: json['activity'] as String,
      type: json['type'] as String,
      participants: json['participants'] as int,
      price: json['price'] as double,
    );
  }

  final String key;
  final String activity;
  final String type;
  final int participants;
  final double price;
}

final activityProvider = FutureProvider<Activity>((ref) async {
  final response = await http.get(Uri.https('www.boredapi.com', '/api/activity')); // Corrected the URL
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return Activity.fromJson(json);
});

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key); // Corrected the constructor syntax.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Example'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final AsyncValue<Activity> activity = ref.watch(activityProvider);

            return activity.when(
              data: (data) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Activity: ${data.activity}'),
                  Text('Type: ${data.type}'),
                  Text('Participants: ${data.participants}'),
                  Text('Price: ${data.price}'),
                ],
              ),
              loading: () => const CircularProgressIndicator(),
              error: (error, stackTrace) => Text('Error: $error'),
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: Home(),
      ),
    ),
  );
}
