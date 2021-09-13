import 'package:flutter/material.dart';
import 'package:button_practice/screens/vcard.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Screen'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Vcard())
              );
            },
            child: Text('See my Card'),
            color: Colors.blueAccent,
            elevation: 20,
          ),
        ),
      ),
    );
  }
}
