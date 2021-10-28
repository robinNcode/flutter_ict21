import 'package:exams/exam6/widgets/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JobSearchPage extends StatefulWidget {
  const JobSearchPage({Key? key}) : super(key: key);

  @override
  _JobSearchPageState createState() => _JobSearchPageState();
}

class _JobSearchPageState extends State<JobSearchPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF122F51),
        title: Row(
          children: [
            BackButton(
              onPressed: () => Navigator.pop(context),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Job Search', style: TextStyle(fontSize: 22, color: Colors.white)),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(7),
            height: 40,
            width: 100,
            child: MaterialButton(
              color: Color(0xFFDE1E37),
              onPressed: (){},
              child: Text('Search', style: TextStyle(color: Colors.white, fontSize: 14,)),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: _size.width/40),
        child: ListView(
          children: [
            CustomDropDown(
              hint: 'Key Word',
              item: ['Adovasoft', 'Data Soft', 'Divine IT'],
            ),
            CustomDropDown(
              hint: 'General Category',
              item: ['Web developer', 'Web designer', 'Flutter developer'],
            ),
            Center(child: Padding(
              padding: EdgeInsets.only(top: _size.height / 40),
              child: Text("OR"),
            )),
            CustomDropDown(
              hint: 'Special Skilled Category',
              item: ['Painter', 'Photographer', 'Actor', 'Singer'],
            ),
            CustomDropDown(
              hint: 'Location',
              item: ['Keraniganj', 'Shamoly', 'Banani'],
            ),
            SizedBox(height: 20,),
            const Text('Experience', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF122F51))),
            SizedBox(height: 15,),
            Row(
              children: [
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Less than 1 year', style: TextStyle(fontSize: 18),),
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
                SizedBox(width: 8,),
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text('1 - 3 years', style: TextStyle(fontSize: 18),),
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
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text('3 - 5 years', style: TextStyle(fontSize: 18),),
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
                SizedBox(width: 8,),
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text('5 - 10 years', style: TextStyle(fontSize: 18),),
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
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Container(
                  height: _size.height / 16,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: const Text('Over 10 years', style: TextStyle(fontSize: 18),),
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
              ],
            ),
            SizedBox(height: 8,),
            Image(
                image: AssetImage('assets/images/banner.jpg'),
                height: 70,
                width: double.infinity,
                fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}
