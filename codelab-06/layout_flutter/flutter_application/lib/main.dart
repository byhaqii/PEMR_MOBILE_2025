import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // soal 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // soal 2
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          // soal 3
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );

    // Langkah 2: buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

  // Praktikum 3 - Langkah 1 (textSection)
Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Danau ini menawarkan pemandangan alam yang tenang '
    'dengan udara sejuk dan air yang jernih, menjadikannya '
    'tempat favorit untuk bersantai dan menikmati keindahan alam. '
    '\n\nDibuat oleh: Rizal Baihaqi (NIM: 2341720225)',
    softWrap: true,
  ),
);

    return MaterialApp(
      title: 'Flutter layout: Muhammad Rizal Al Baihaqi - 2341720225',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Image.asset(
              'images/pantai.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  // Langkah 1
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
