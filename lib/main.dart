import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          [Color.fromRGBO(222, 242, 255, 1), Color.fromRGBO(255, 245, 245, 1)]),
    ),
  ));
}
