import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [Color.fromARGB(255, 31, 1, 51), Color.fromARGB(255, 78, 18, 87)],
        ),
      ),
    ),
  );
}
