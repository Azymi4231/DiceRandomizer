import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class CubeRoller extends StatefulWidget {
  const CubeRoller({super.key});

  @override
  State<CubeRoller> createState() {
    return _CubeRollerState();
  }
}

class _CubeRollerState extends State<CubeRoller> {
  var activeCubeImagine = 'assets/dice-images/dice-1.png';

  void rollDice() {
    var cubeRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeCubeImagine = 'assets/dice-images/dice-$cubeRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeCubeImagine,
          width: 201,
        ),
        const SizedBox(height: 50),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 10, 119, 255),
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 48.0),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )),
          child: const Text(
            'Roll The Dice',
          ),
        )
      ],
    );
  }
}
