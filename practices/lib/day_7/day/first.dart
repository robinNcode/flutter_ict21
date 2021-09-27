import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practices/day_7/day/menu_bar.dart';

class StackAssign extends StatefulWidget {
  const StackAssign({Key? key}) : super(key: key);

  @override
  _StackAssignState createState() => _StackAssignState();
}

class _StackAssignState extends State<StackAssign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              'Image - 1',
              style: TextStyle(fontSize: 20, fontFamily: 'Lobster'),
            )
        ),
        drawer: const CustomDrawer(),
        body: Stack(
          children: [
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              child: const Image(
                image: AssetImage('assets/images/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.black, Colors.transparent],
                          begin: Alignment.topCenter,
                          end: Alignment.center)),
                  child: Column(
                    children: const [
                      Text(
                        'The whole world depends on logic,',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Acme',
                            color: Colors.white
                        ),
                      ),
                      Text(
                        'If your logic is universal',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lobster',
                            color: Color(0xFF7027A0)),
                      ),
                      Text(
                        'then you are the BOSS',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Acme',
                        ),
                      ),
                      Text(
                        '  ----- MsM Robin',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lobster'
                        ),
                      ),

                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
