import 'package:flutter/material.dart';

class CustomGridItem extends StatelessWidget {
  final String howMany, title;
  final IconData icon;
  final Color leftClr, rightClr;

  const CustomGridItem({Key? key, required this.howMany, required this.title, required this.leftClr, required this.rightClr, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
            colors: [
              leftClr,
              rightClr,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 5),
            child: Text(howMany, style: TextStyle(fontSize: 30, color: Colors.white),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(title, style: TextStyle(fontSize: 18, color: Colors.white),),
          ),
          Align(alignment: Alignment.bottomRight, child: Padding(
            padding: const EdgeInsets.only(top: 0, right: 10, bottom: 5),
            child: Icon(icon, size: 26, color: Colors.white,),
          ))
        ],
      ),
    );
  }
}
