import 'package:flutter/material.dart';
import 'package:practices/user_profile/pages/profile.dart';

class Intro extends StatelessWidget {
  const Intro({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF22577A),
      appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 30, fontFamily: 'Lobster'),
          ),
        backgroundColor: const Color(0xFF1E3163),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/intro1.jpg'),
                radius: 60,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
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
                      MaterialPageRoute(builder: (context) => const Profile())
                    );
                  },
                  child: const Text('My Profile', style: TextStyle(color: Colors.white),),
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