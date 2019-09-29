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
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void changeDicePage() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1; // 0 - 5
      rightDiceNumber = Random().nextInt(6) + 1; // 0 - 5
      print('leftDiceNumber = $leftDiceNumber');
      print('rightDiceNumber = $rightDiceNumber');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: (){
                  changeDicePage();
                },
                child: Image.asset('images/dice$leftDiceNumber.png')
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: (){
                  changeDicePage();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')
            ),
          )
        ],
      ),
    );
  }
}

