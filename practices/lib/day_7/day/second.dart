import 'package:flutter/material.dart';
import 'package:practices/day_7/day/menu_bar.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override

  final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'Image - 2',
              style: TextStyle(fontSize: 20, fontFamily: 'Lobster'),
            )
        ),
        drawer: CustomDrawer(),
        body: Stack(
          children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              child: Image(
                image: AssetImage('assets/images/ant.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black],
                          begin: Alignment.topCenter,
                          end: Alignment.center)),
                  child: Column(
                    children: [
                      Text(
                        'Your problem is the',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Acme',
                            color: Colors.white
                        ),
                      ),
                      Text(
                        'BEST',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lobster',
                            color: Colors.white),
                      ),
                      Text(
                        'solution of your problem..',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Acme',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          style: style,
                          onPressed: (){},
                          child: const Text('Like'),
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