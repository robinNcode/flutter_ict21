import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;
  const CustomCard({Key? key, required this.text, required this.textColor, required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
          top: _size.height / 30,
          left: _size.width / 13,
          right: _size.width / 13),
      child: Container(
        height: 55,
        width: double.maxFinite,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: textColor),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            style: BorderStyle.solid,
            width: 1.0,
          ),
          color: bgColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
