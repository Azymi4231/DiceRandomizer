import 'package:flutter/material.dart';
import 'package:first_app/cube_roller.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAligment, end: endAligment),
        ),
        child: const Center(
          child: CubeRoller(),
        ));
  }
}
