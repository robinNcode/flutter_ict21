import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoard createState() => _DashBoard();
}

class _DashBoard extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              title: const Text("Day 4")
          ),
          body: SingleChildScrollView(
              child: Column(
                children: [
                  RaisedButton(
                    child: Text('Raised Button'),
                    onPressed: () {},
                    elevation: 20,
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text('Flat Button')
                  ),
                  Switch(
                    onChanged: (isEnabled) {},
                    value: true,
                  ),
                  Slider(
                    value: 40,
                    onChanged: (value) {},
                    min: 0,
                    max: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image(
                      image: NetworkImage(
                          'https://img.freepik.com/free-vector/cute-panda-with-bamboo_138676-3053.jpg'),
                      height: 600,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Write your name',
                          labelText: 'Name',

                        ),
                      )
                  )
                ],
              )),
        ));
  }
}
