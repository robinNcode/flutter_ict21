import 'package:exams/exam6/widgets/custom_bottombar.dart';
import 'package:exams/exam6/widgets/hot_jobs_widgets.dart';
import 'package:flutter/material.dart';

class HotJobPage extends StatefulWidget {
  const HotJobPage({Key? key}) : super(key: key);

  @override
  _HotJobPageState createState() => _HotJobPageState();
}

class _HotJobPageState extends State<HotJobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF122F51),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Hot Jobs',
              style: TextStyle(fontSize: 26, color: Colors.white)),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.search, size: 28),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.notifications, size: 28),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Material(
            elevation: 8,
            child: Container(
              height: 28,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    const Text(
                      '   175',
                      style: TextStyle(color: Colors.red, fontSize: 16),
                    ),
                    const Text(
                      '  New Job',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height:20),
          HotJobWidget(),
          HotJobWidget(),
          HotJobWidget(),
          HotJobWidget(),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
