import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class CoffeRoller extends StatefulWidget {
  const CoffeRoller({super.key});

  @override
  State<CoffeRoller> createState() {
    return _CoffeRollerState();
  }
}

class _CoffeRollerState extends State<CoffeRoller> {
  var activeCoffeImagine = 'assets/dice-images/dice-1.png';

  void rollDice() {
    var coffeRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeCoffeImagine = 'assets/dice-images/dice-$coffeRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeCoffeImagine,
          width: 200,
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
