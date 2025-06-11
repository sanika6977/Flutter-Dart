import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Color.fromARGB(255, 14, 50, 48),
                Colors.teal,
                 Color.fromARGB(255, 213, 128, 9),
                 Colors.deepOrange,]),
        ),
    )
  );

}