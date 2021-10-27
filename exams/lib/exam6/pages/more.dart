import 'package:exams/exam6/widgets/custom_bottombar.dart';
import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({ Key? key }) : super(key: key);

  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}