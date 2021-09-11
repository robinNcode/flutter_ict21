import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Login();
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 0),
                  child: Container(
                    child: Image(
                      image: AssetImage('assets/login.jpg'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 250,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 0),
                    child: Container(
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'User Name',
                      hintText: 'ex: MsM Robin....',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: const BorderSide(color: Colors.lightGreen, width: 1.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 10, right: 20, bottom: 0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: const BorderSide(color: Colors.blue, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: const BorderSide(color: Colors.lightGreen, width: 1.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 10, right: 100, bottom: 0),
                  child: RaisedButton(
                    child: Text('Submit'),
                    onPressed: (){},
                    elevation: 10,
                    focusColor: Colors.blue,
                    textColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
