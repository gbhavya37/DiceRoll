import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<DiceRoll> {
  var currentDiceValue = 1;

  void rolldice() {
    setState(() {
      currentDiceValue = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-$currentDiceValue.png', width: 200),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 26),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
