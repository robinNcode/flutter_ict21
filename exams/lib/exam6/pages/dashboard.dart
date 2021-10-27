import 'package:exams/exam6/widgets/custom_bottombar.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({ Key? key }) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF122F51),
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Lorem',
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
                  child: Icon(
                    Icons.person,
                    color: Colors.black
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      
      body: ListView(
        children: [
          Container(
            height: 8,
            child: Row(
              children: [
                const Text('175', style:TextStyle(color: Colors.red),),
                const Text('New Job')
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}