import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(ProviderScope(child: MyApp()));
}

// Function to fetch albums data
Future<List<dynamic>> fetchAlbums() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    return json.decode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // throw an exception.
    throw Exception('Failed to load albums');
  }
}

// Riverpod provider for albums
final albumsProvider = FutureProvider<List<dynamic>>((ref) async {
  return fetchAlbums();
});

// MyApp widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Riverpod HTTP Example'),
        ),
        body: Center(
          child: Consumer(
            builder: (context, WidgetRef ref, child) {
              // AsyncValue handles loading and error states
              final albumsAsyncValue = ref.watch(albumsProvider);

              return albumsAsyncValue.when(
                loading: () => CircularProgressIndicator(),
                error: (error, stackTrace) => Text('Error: $error'),
                data: (albums) {
                  // Display the fetched data
                  return ListView.builder(
                    itemCount: albums.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(albums[index]['title']),
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
