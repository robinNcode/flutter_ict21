import 'package:exams/exam4/widgets/custom_skills_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: _size.height / 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: _size.width / 8),
                child: LinearPercentIndicator(
                  width: _size.width - 100,
                  lineHeight: 6.0,
                  percent: 0.4,
                  progressColor: Colors.green,
                ),
              ),
              SizedBox(
                height: _size.height / 20,
              ),
              const Text(
                'Create Your Free BdJobs Account',
                style: TextStyle(fontSize: 22),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: _size.height / 30,
                    left: _size.width / 13,
                    right: _size.width / 13),
                child: Container(
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(FontAwesomeIcons.google,
                          size: 26, color: Colors.red),
                      const Text(
                        'Import from Google',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: _size.height / 30,
                    left: _size.width / 13,
                    right: _size.width / 13),
                child: Container(
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(FontAwesomeIcons.facebookF,
                          size: 26, color: Colors.blue[900]),
                      const Text(
                        'Import from Facebook',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _size.height / 30, left: _size.width / 16, right: _size.width / 16),
                child: Column(
                  children: [
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                      Text("OR"),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                    ]),
                  ],
                ),
              ),
              CustomCard(text: 'Enter your information', textColor: Colors.white, bgColor: Colors.black,),
              SizedBox(
                height: _size.height / 10,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: _size.height / 20),
                      child: Text(
                        'For any help',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: _size.height / 60),
                      child: Text(
                        'Call at 16479',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
