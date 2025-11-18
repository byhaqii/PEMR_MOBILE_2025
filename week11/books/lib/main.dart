import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ADDED: import the new screen
import 'geolocation.dart';
import 'navigation_first.dart';
import 'navigation_dialog.dart';

// Volume ID from your Google Books link (not an API key)
const String volumeId = 'cNHox5OgdFQC';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const NavigationDialogScreen());
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});
  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  Map<String, dynamic>? book;
  String error = '';
  String rawResult = '';
  String countResult = '';
  // add result field as shown in the image/example
  String result = '';
  bool _loading = false;

  // Add method to fetch data from Google Books API.
  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    // Use the volume ID (from your link) in the path; do NOT pass it as an API key.
    final path = '/books/v1/volumes/$volumeId';
    final url = Uri.https(authority, path);
    return http.get(url);
  }

  Future<void> _fetch() async {
    setState(() => _loading = true);
    try {
      final resp = await getData();
      if (resp.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(resp.body);
        // volumeInfo contains the title, authors, description, etc.
        setState(() {
          book = json['volumeInfo'] as Map<String, dynamic>?;
          error = '';
        });
      } else {
        setState(() {
          book = null;
          error = 'Error: ${resp.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        book = null;
        error = 'Error: $e';
      });
    } finally {
      setState(() => _loading = false);
    }
  }

  // three async helpers (each waits 3s and returns a value)
  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  // count() awaits the three helpers, sums them, and updates state
  Future<void> count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      countResult = total.toString();
    });
  }

  // Completer-based example (from the image)
  late Completer<int> completer;

  Future<int> getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  // replace calculate() to match the image
  calculate() async {
    try {
      await new Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
      // throw Exception();
    } catch (_) {
      completer.completeError({});
    }
  }

  // Run three futures in parallel using Future.wait and collect results
  Future<void> returnFW() async {
    final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);

    try {
      final values = await futures;
      final total = values.fold<int>(0, (prev, el) => prev + el);
      setState(() {
        result = total.toString();
      });
    } catch (_) {
      setState(() {
        result = 'Error';
      });
    }
  }

  // Soal 9 helper: throws an error after 2 seconds
  Future<void> returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened');
  }

  // Langkah 4: handleError() using async/await, try/catch/finally
  Future<void> handleError() async {
    try {
      await returnError();
    } catch (error) {
      setState(() {
        result = error.toString();
      });
    } finally {
      // runs regardless of success/error
      print('Complete');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Back from the Future')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('GO!'),
              onPressed: () {
                // call the async/await handler (Langkah 4)
                setState(() {
                  result = '';
                });
                handleError();
              },
            ),
            const SizedBox(height: 24),
            // large centered result number
            Text(
              result.isNotEmpty ? result : '-',
              style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            // keep spinner if you want; currently not toggled by the image flow
            if (_loading) const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

// helper placed after class
String _formatAuthors(dynamic authors) {
  if (authors == null) return 'N/A';
  if (authors is List) return authors.join(', ');
  return authors.toString();
}
