import 'package:flutter/material.dart';

import 'dashboard.dart';
class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          )
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width/25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                fontSize: 36,
                color: Color(0xFF3B185F)
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: TextFormField(
                cursorHeight: 30,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
                  labelText: 'User Name, Email or Mobile No',
                  labelStyle: TextStyle(color: Colors.black87),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF150050), width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                obscureText: true,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                'Forgot Username ?'
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.height/10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: Text(
                          'Sign With Social',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                              backgroundColor: Colors.white,
                              onPressed: (){},
                              child: Image(
                                image: AssetImage('assets/exam3/images/google.png'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                              onPressed: (){},
                              backgroundColor: Colors.white,
                              child: Image(
                                image: AssetImage('assets/exam3/images/facebook.png'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FloatingActionButton(
                              onPressed: (){},
                              backgroundColor: Colors.white,
                              child: Image(
                                image: AssetImage('assets/exam3/images/linkedin.png'),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DashBoard())
          );
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.arrow_right_alt, size: 40,),
      ),
      
    );
  }
}


