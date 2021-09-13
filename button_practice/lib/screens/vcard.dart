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
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/instagram.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
