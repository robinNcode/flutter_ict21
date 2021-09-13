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
              ),
            ),
            Text(
              'Android Developer',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Pacifico'),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.phone_android),
                title: Text(
                  '+8801739299741',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 20
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.mail_outline),
                title: Text(
                  'msmrobin518@gmail.com',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Center(
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
