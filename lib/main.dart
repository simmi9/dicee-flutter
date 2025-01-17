import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          flex: 1,
          child: FlatButton(
            onPressed: () {
              changeDiceFace();
              print('left button pressed');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
            onPressed: () {
              changeDiceFace();
              print('right button pressed');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        )
      ]),
    );
  }
}
