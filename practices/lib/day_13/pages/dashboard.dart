import 'package:flutter/material.dart';
import 'search_abr.dart';
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
            HomeAppBar(),
            SearchBar(),
          ],
        )
      ]),
    );
  }
}
