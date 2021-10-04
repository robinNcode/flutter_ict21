import 'package:flutter/material.dart';
import 'package:practices/day_13/pages/liquid_swipe.dart';
import 'day_12/home.dart';
import 'day_12/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShuduLiquide(),
    );
  }
}
