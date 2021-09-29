// ignore_for_file: unused_import

import 'package:exams/exam3/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:exams/pages/exam2.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loading(),
    );
  }
}