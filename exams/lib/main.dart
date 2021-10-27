import 'package:exams/exam4/account.dart';
import 'package:exams/exam4/signin.dart';
import 'package:exams/exam6/pages/hot_jobs.dart';
import 'package:flutter/material.dart';
import 'package:exams/pages/exam2.dart';
import 'package:flutter/services.dart';
import 'exam6/pages/profile.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF122F51),
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotJobPage(),
    );
  }
}