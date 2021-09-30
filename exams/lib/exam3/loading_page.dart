import 'package:exams/exam3/pages/signin.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loading(),
    );
  }
}

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading>  with TickerProviderStateMixin{
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                      }, 
                      child: Image(
                        image: AssetImage('assets/exam3/images/pencilbox.png'),
                        width: MediaQuery.of(context).size.width/2.5,
                        height: MediaQuery.of(context).size.height/2,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: LinearProgressIndicator(
                    value: controller.value,
                    semanticsLabel: 'Pencil Box',
                    color: Colors.black87,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage('assets/exam3/images/pencilboxBanner1.png'),
                    width: MediaQuery.of(context).size.width/2,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('v1.0.0.16.(85)',style: TextStyle(fontSize: 22)),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
