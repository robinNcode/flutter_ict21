import 'package:flutter/material.dart';
import 'package:day7/day/first.dart';
import 'package:day7/day/second.dart';
import 'package:day7/day/third.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          AppBar(
          backgroundColor: Colors.black,
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Menu',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
      ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StackAssign())
                  );
                },
                child: Column(
                  children: [
                    Icon(Icons.app_settings_alt_sharp),
                    Text('First Page'),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage())
                  );
                },
                child: Column(
                  children: [
                    Icon(Icons.app_settings_alt_sharp),
                    Text('Second Page'),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdPage())
                  );
                },
                child: Column(
                  children: [
                    Icon(Icons.task),
                    Text('Third page'),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
