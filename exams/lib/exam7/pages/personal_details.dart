import 'package:exams/exam7/pages/personal_details_edit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({Key? key}) : super(key: key);

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
        title: const Text('Personal Details', style: TextStyle(fontSize: 22, color: Colors.white)),
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: _size.height / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalDetailsEdit()));
                  },
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF122F51),
                    radius: 40,
                    child: CircleAvatar(
                      radius: 39,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.userPlus,
                          color: Color(0xFF2E64A4),
                          size: 34,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: _size.height / 40, left: _size.width / 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'MsM Robin',
                        style:
                            TextStyle(fontSize: 26, color: Color(0xFF122F51)),
                      ),
                      const Text(
                        'b001.adovasoft@gmail.com',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xFF122F51)),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: _size.height / 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _size.width / 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _customRowContents(
                    lIcon: Icons.person,
                    lLabel: 'Father\'s Name',
                    rIcon: Icons.person,
                    rLabel: 'Mother\'s Name'),
                _customRowContents(
                    lIcon: Icons.calendar_today,
                    lLabel: 'Date Of Birth',
                    rIcon: Icons.book_rounded,
                    rLabel: 'Religion'),
                _customRowContents(
                    lIcon: FontAwesomeIcons.venusMars,
                    lLabel: 'Gender',
                    fieldData: 'Female',
                    rIcon: FontAwesomeIcons.lifeRing,
                    rLabel: 'Marital Status'),
                _customRowContents(
                    lIcon: Icons.flag,
                    lLabel: 'Nationality',
                    rIcon: Icons.perm_contact_calendar_rounded,
                    rLabel: 'National Id No'),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Image.asset('assets/exam7/images/for_any.jpg', fit: BoxFit.cover),
        ],
      ),
    );
  }

  Widget _customRowContents({
    required IconData lIcon,
    required String lLabel,
    required IconData rIcon,
    required String rLabel,
    String fieldData = '',
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(lIcon, color: Color(0xFF122F51)),
            ),
            fieldData == '' ? Text(lLabel, style: TextStyle(color: Color(0xFF122F51))) : 
            Column(children: [
              Text(lLabel, style: TextStyle(color: Color(0xFF122F51))),
              Text(fieldData,
                  style: TextStyle(
                      color: Color(0xFF122F51), fontWeight: FontWeight.bold)),
            ]),
            
          ]),
        ),
        Expanded(
          flex: 1,
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(rIcon, color: Color(0xFF122F51)),
            ),
            Text(rLabel, style: TextStyle(color: Color(0xFF122F51)))
          ]),
        )
      ],
    );
  }
}
