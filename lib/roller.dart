import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class Roller extends StatefulWidget {
  const Roller({super.key});

  @override
  State<Roller> createState() => _RollerState();
}

class _RollerState extends State<Roller> {
  var activeImage = "assets/images/dice-1.png";

  void roll() {
    setState(() {
      var currentDiceRoll = randomizer.nextInt(6) + 1;
      activeImage = "assets/images/dice-$currentDiceRoll.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.lightBlue], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                activeImage,
                width: 300,
              ),
              TextButton(
                onPressed: roll,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white
                ),
                child: const Text("Roll Dice", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}