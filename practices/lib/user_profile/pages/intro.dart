import 'package:flutter/material.dart';
import 'package:user_profile/pages/profile.dart';

class Intro extends StatelessWidget {
  const Intro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF22577A),
      appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            'Home',
            style: TextStyle(fontSize: 30, fontFamily: 'Lobster'),
          ),
        backgroundColor: Color(0xFF1E3163),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/intro1.jpg'),
                radius: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  title: Center(
                    child: Text('Learning from everywhere & everyone'),
                  ),
                  tileColor: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profile())
                    );
                  },
                  child: Text('My Profile', style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                  elevation: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}