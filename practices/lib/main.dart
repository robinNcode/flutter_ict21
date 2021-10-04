import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practices/day_13/pages/dashboard.dart';
//import 'package:practices/day_13/pages/liquid_swipe.dart';
//import 'day_12/home.dart';
//import 'day_12/splash_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //for day 13
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Dashboard(),
    );
  }
}
