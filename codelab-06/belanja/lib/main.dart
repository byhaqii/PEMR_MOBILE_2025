import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(const AppleStore());
}

class AppleStore extends StatelessWidget {
  const AppleStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apple Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // ✅ Use Colors.grey instead of Color.fromARGB for primarySwatch
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/item': (context) => const ItemPage(),
      },
    );
  }
}