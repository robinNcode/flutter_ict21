import 'package:flutter/material.dart';
//import 'package:user_profile/pages/intro.dart';
import 'package:user_profile/pages/exam.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Exam(),
    );
  }
}
