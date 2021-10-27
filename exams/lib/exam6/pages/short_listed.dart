import 'package:exams/exam6/widgets/custom_bottombar.dart';
import 'package:flutter/material.dart';

class ShortListedPage extends StatefulWidget {
  const ShortListedPage({ Key? key }) : super(key: key);

  @override
  _ShortListedPageState createState() => _ShortListedPageState();
}

class _ShortListedPageState extends State<ShortListedPage> {
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