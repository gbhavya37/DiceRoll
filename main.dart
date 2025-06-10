import 'package:flutter/material.dart';
import 'gradient_container.dart' show GradientContainer;

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 7, 168, 243),
          Colors.deepPurple,
        ),
      ),
    ),
  );
}
