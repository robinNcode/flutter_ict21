import 'dart:math';

import 'package:flutter/material.dart';

class DiceState extends StatefulWidget {
  const DiceState({Key? key}) : super(key: key);

  @override
  _DiceStateState createState() => _DiceStateState();
}

class _DiceStateState extends State<DiceState> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  void changeLeftDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
    });
  }

  void changeRightDice(){
    setState(() {
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Dice App'),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    changeLeftDice();
                  },
                  child: Image(
                    image: AssetImage('assets/images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    changeRightDice();
                  },
                  child: Image(
                    image: AssetImage('assets/images/dice$rightDiceNumber.png'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}