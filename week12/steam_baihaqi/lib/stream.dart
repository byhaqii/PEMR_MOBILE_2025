import 'package:flutter/material.dart';
import 'dart:async';

class ColorStream {
  final List<Color> _colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.indigo,
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      int index = t % _colors.length;
      return _colors[index];
    });
  }
}

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  addError() {
    controller.sink.addError('error');
  }

  close() {
    controller.close();
  }

  // Menghasilkan angka bertambah setiap 500ms
  Stream<int> getNumbers() async* {
    yield* Stream.periodic(const Duration(milliseconds: 500), (int t) {
      return t; // t akan mulai dari 0 dan bertambah
    });
  }
}
