import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF084E12),
      appBar: AppBar(
          backgroundColor: Color(0xFF2F8002),
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Profile',
            style: TextStyle(fontSize: 30, fontFamily: 'Lobster'),
          )
      ),
      body: SafeArea(
        child: Column(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/cover3.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 60.0),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                        radius: 60,
                      ),
                    ),
                    Text(
                      'MSM Robin',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Lobster',
                      ),
                    ),
                    Text(
                      'Android Developer',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Acme'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.facebook),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add_a_photo),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.mail),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.person),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.home),
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone_android),
                title: Text(
                  '+8801739299741',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                tileColor: Colors.grey[350],
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.mail_outline),
                title: Text(
                  'msmrobin518@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                tileColor: Colors.grey[350],
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.location_on),
                title: Text(
                  '60/26 B-Dhalpur, Jatrabari, Dhaka',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                tileColor: Colors.grey[350],
              ),
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.lightGreen,
        elevation: 20,
      ),
    );
  }
}
