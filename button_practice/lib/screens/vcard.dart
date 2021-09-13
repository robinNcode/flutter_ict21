import 'package:flutter/material.dart';

class Vcard extends StatefulWidget {
  const Vcard({Key? key}) : super(key: key);

  @override
  _VcardState createState() => _VcardState();
}

class _VcardState extends State<Vcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/personal.jpg'),
              radius: 70,
            ),
            Text(
              'MSM Robin',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                fontFamily: 'Pacifico'
              ),
            ),
            Text(
              'Android Developer',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Pacifico'
              ),
            ),
            SizedBox(
              child: Divider(
                color: Colors.white,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
