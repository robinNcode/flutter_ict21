import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practices/day_13/pages/tag_list.dart';
import 'package:practices/day_13/widgets/card.dart';
import 'search_bar.dart';
import 'home_app.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Row(
          children: [
            Expanded(flex: 2, child: Container()),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey[300],
                )),
          ],
        ),
        Column(
          children: [
            const HomeAppBar(),
            const SearchBar(),
            TagList(),
          ],
        )
      ]),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.red,
        backgroundColor: Colors.white,
        items: const <Widget>[
          Icon(Icons.home, color: Colors.white, size: 30,),
          Icon(Icons.list, color: Colors.white, size: 30,),
          Icon(Icons.add, color: Colors.white, size: 30,),
          Icon(Icons.compare_arrows, color: Colors.white, size: 30,),
          Icon(Icons.person, color: Colors.white, size: 30,),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
