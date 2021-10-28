import 'package:exams/exam6/widgets/custom_bottombar.dart';
import 'package:exams/exam6/widgets/grid_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF122F51),
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Lorem',
              style: TextStyle(fontSize: 26, color: Colors.white)),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.search, size: 28),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.notifications, size: 28),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: _size.height / 40, horizontal: _size.width / 10),
              child: Container(
                height: _size.height / 14,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: double.maxFinite,
                        child: Center(
                            child: const Text(
                          'This month',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: double.maxFinite,
                        child: Center(
                            child: const Text(
                          'Last Time',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: (1 / .9),
              children: [
                CustomGridItem(
                    howMany: '13',
                    title: 'Job Applied',
                    leftClr: Color(0xFF183561),
                    rightClr: Color(0xFF4E68F1),
                    icon: Icons.insert_drive_file),
                CustomGridItem(
                    howMany: '13',
                    title: 'Times Emailed Resume',
                    leftClr: Color(0xFFA01355),
                    rightClr: Color(0xFFDB1D37),
                    icon: Icons.send),
                CustomGridItem(
                    howMany: '9',
                    title: 'Employers Viewed Applied',
                    leftClr: Color(0xFFC8470D),
                    rightClr: Color(0xFFF8AD16),
                  icon: Icons.bookmark,
                ),
                CustomGridItem(
                    howMany: '7',
                    title: 'Employers Followed',
                    leftClr: Color(0xFF0B787F),
                    rightClr: Color(0xFF47C9D7),
                    icon: Icons.person_add_alt_1),
                CustomGridItem(
                    howMany: '5',
                    title: 'Interview Invitations',
                    leftClr: Color(0xFF7C19AA),
                    rightClr: Color(0xFFC804ED),
                    icon: Icons.people),
                CustomGridItem(
                    howMany: '5',
                    title: 'Message By Employers',
                    leftClr: Color(0xFF45565E),
                    rightClr: Color(0xFF8CA0A9),
                    icon: Icons.mail_outline),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                  elevation: 5,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Manage Resume'),
                      IconButton(
                        onPressed: (){ Navigator.pop(context);},
                        icon: Icon(Icons.clear),
                      )
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: _size.height / 16,
                            width: _size.width/1.5,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(FontAwesomeIcons.fileSignature, size: 22,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: const Text('Edit Resume', style: TextStyle(fontSize: 18),),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            height: _size.height / 16,
                            width: _size.width/1.5,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(Icons.remove_red_eye_sharp, size: 22,),
                                ),
                                const Text('  View Resume', style: TextStyle(fontSize: 18),),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            height: _size.height / 16,
                            width: _size.width/1.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(FontAwesomeIcons.upload ),
                                ),
                                const Text('  Upload Resume', style: TextStyle(fontSize: 18),),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8)
                            ),
                          ),
                          SizedBox(height: 25),
                        ],
                      ),
                    )
                  ],
                );
              }
          );
        },
        child: Icon(
          Icons.file_copy_outlined,
          size: 30,
        ),
        backgroundColor: Color(0xFF13A10F),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
