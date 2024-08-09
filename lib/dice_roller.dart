import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = './assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      activeDiceImage = './assets/images/dice-${randomizer.nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        activeDiceImage,
        width: 200,
      ),
      const SizedBox(
        height: 40,
      ),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 28,
          ),
        ),
        child: const Text("Roll Dice"),
      ),
    ]);
  }
}
