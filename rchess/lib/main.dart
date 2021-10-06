// ignore_for_file: unnecessary_new, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_chess_board/src/chess_board.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String myMove = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ChessBoard(
              onMove: (move) {
                myMove = move;
              },
              onCheck: (color) {
                print(color);
              },
              onCheckMate: (color) {
                print(color);
              },
              onDraw: () {},
              size: MediaQuery.of(context).size.width,
              enableUserMoves: true,
            ),
            Row(
              children: [
                Expanded(child: Text('Moves: \n $myMove\n')),
                Expanded(child: Text(myMove)),
                Expanded(child: Text(myMove)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
