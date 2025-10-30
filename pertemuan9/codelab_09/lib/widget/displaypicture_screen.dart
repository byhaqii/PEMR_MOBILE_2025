import 'dart:io';
import 'package:flutter/material.dart';

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final file = File(imagePath);
    if (!file.existsSync()) {
      return Scaffold(
        appBar: AppBar(title: const Text('Display the Picture - NIM Anda')),
        body: const Center(child: Text('Image not found')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture - NIM Anda')),
      body: Center(child: Image.file(file, fit: BoxFit.contain)),
    );
  }
}
