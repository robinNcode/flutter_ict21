import 'package:exams/exam6/pages/dashboard.dart';
import 'package:exams/exam6/pages/hot_jobs.dart';
import 'package:exams/exam6/pages/more.dart';
import 'package:exams/exam6/pages/short_listed.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;
  static const _pages = <Widget>[
    HotJobPage(),
    ShortListedPage(),
    DashboardPage(),
    MorePage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //Navigator.push(context, MaterialPageRoute(builder: (context) => _pages[_selectedIndex + 1]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: TextStyle(fontSize: 18),
      unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 14),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
            color: Colors.grey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_fire_department,
            color: Colors.grey,
          ),
          label: 'Hot Jobs',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.star,
            color: Colors.grey,
          ),
          label: 'Shortlisted',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey,
          ),
          label: 'Lorem',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.linear_scale_sharp,
            color: Colors.grey,
          ),
          label: 'More',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFF122F51),
      onTap: _onItemTapped,
    );
  }
}
