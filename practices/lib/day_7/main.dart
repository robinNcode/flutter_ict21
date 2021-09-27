import 'package:flutter/material.dart';
import 'package:practices/day_7/day/first.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackAssign(),
    );
  }
}

/*class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoard createState() => _DashBoard();
}

class _DashBoard extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Day 4")
          ),
          body: SingleChildScrollView(
              child: Row(
            children: [
              Container(
                height: 200,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.blue,
              ),
            ],
          )),
        ));
  }
}*/
