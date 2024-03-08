import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.green.shade900,
          appBar: AppBar(
            backgroundColor: Colors.green.shade900,
          ),
          body: _DiceGame()),
    ),
  );
}


class _DiceGame extends StatefulWidget {
  const _DiceGame({super.key});

  @override
  State<_DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<_DiceGame> {
  var DiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150.0,
            width: 150.0,
            child: TextButton(
              style:
              TextButton.styleFrom(foregroundColor: Colors.green.shade900),
              onPressed: () {
                setState(() {
                  DiceNumber = Random().nextInt(6)+1;
                  print('hey button pressed $DiceNumber!');
                });
              },
              child: Image(
                image: AssetImage('images/dice$DiceNumber.JPEG'),
              ),
              
            ),
          ),
          Text('Your Score is $DiceNumber',
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico'
            ),
          ),
        ],
      ),
    );
  }
}
