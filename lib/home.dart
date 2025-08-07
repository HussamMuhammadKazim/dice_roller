import 'package:dice_roller/roller.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        title: const Text("Dice Roller", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),),
      ),
      body: Roller(),
    );
  }
}