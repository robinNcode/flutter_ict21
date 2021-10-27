import 'package:exams/exam6/widgets/custom_bottombar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: _size.height/3.5,
                width: double.maxFinite,
                child: Image.asset('assets/exam6/images/back2.jpg', fit: BoxFit.cover, width: double.infinity,),
              ),
              Positioned(
                top: 20,
                left: 20,
                bottom: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, color: Color(0xFF2E64A4), size: 34,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: _size.height/12, left: _size.width / 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('MsM Robin', style: TextStyle(fontSize: 26, color: Colors.white),),
                          const Text('b001.adovasoft@gmail.com', style: TextStyle(fontSize: 18, color: Colors.white),)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top:  _size.height/8, left: _size.width/15, right: _size.width/15),
            child: Column(
              children: [
                Container(
                  height: _size.height / 13,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 12,
                      color: Color(0xFF046CC3)
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(8)
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.local_offer, size: 26,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text('Dhaka, Bangladesh', style: TextStyle(fontSize: 18),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: _size.height / 13,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 12,
                      color: Color(0xFF046CC3)
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(8)
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FaIcon(FontAwesomeIcons.briefcase),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text('Organization Type', style: TextStyle(fontSize: 18),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: _size.height / 12,
                  width: _size.width / 2,
                  decoration: BoxDecoration(
                    color: Color(0xFFDE1E37),
                    borderRadius: BorderRadius.all(
                        Radius.circular(8)
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(Icons.search, size: 26, color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Search Job', style: TextStyle(color: Colors.white, fontSize: 22),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: _size.height / 12,
                  width: _size.width / 2,
                  decoration: BoxDecoration(
                    color: Color(0xFFDE1E37),
                    borderRadius: BorderRadius.all(
                        Radius.circular(8)
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Icon(Icons.assistant_direction_sharp, size: 26, color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Post a Job', style: TextStyle(color: Colors.white, fontSize: 22),),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
