import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF122F51),
        elevation: 0,
        leading: BackButton(
          color: Colors.white,
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Contact Details',
            style: TextStyle(fontSize: 22, color: Colors.white)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(
              FontAwesomeIcons.edit,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(FontAwesomeIcons.mapMarkerAlt, size: 22, color: Color(0xFF122F51)),
                ),
                Text('Present Address', style: TextStyle(fontSize: 18, color: Color(0xFF122F51))),
              ]),
              SizedBox(height: _size.height /10),
              Divider(thickness: 2,),

              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(FontAwesomeIcons.mapMarkerAlt, size: 22, color: Color(0xFF122F51)),
                ),
                Text('Present Address', style: TextStyle(fontSize: 18, color: Color(0xFF122F51))),
              ]),
              SizedBox(height: _size.height /10),
              Divider(thickness: 2,),

              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(Icons.phone, size: 22, color: Color(0xFF122F51)),
                ),
                Text('Phone Number', style: TextStyle(fontSize: 18, color: Color(0xFF122F51))),
              ]),
              SizedBox(height: _size.height /20),
              Divider(thickness: 2,),

              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Icon(FontAwesomeIcons.at, size: 22, color: Color(0xFF122F51)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Email', style: TextStyle(fontSize: 18, color: Color(0xFF122F51))),
                    const Text('b001.adovasoft@gmail.com', style: TextStyle(fontSize: 18, color: Color(0xFF122F51), fontWeight: FontWeight.bold),
                      )
                  ],
                )
                
              ]),
            ],
          ),
        ),
        Image.asset('assets/exam7/images/for_any.jpg', fit: BoxFit.cover),
      ]),
    );
  }
}
