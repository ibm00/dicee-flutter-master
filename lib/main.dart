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
  int lb = 1, rb = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  generateRandomDicee();
                });
              },
              child: Image.asset('images/dice$lb.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  generateRandomDicee();
                });
              },
              child: Image.asset('images/dice$rb.png'),
            ),
          ),
        ],
      ),
    );
  }

  generateRandomDicee() {
    rb = Random().nextInt(6) + 1;
    lb = Random().nextInt(6) + 1;
  }
}
