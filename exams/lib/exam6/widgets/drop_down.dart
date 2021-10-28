import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final String hint;
  List<String> item;

  CustomDropDown({Key? key, required this.hint, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void setState(Null Function() param0) {}

    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
      child: DropdownButtonFormField(
        items: [
          DropdownMenuItem(
            child: Text(item[0]),
            value: 1,
          ),
          DropdownMenuItem(
            child: Text(item[1]),
            value: 2,
          ),
          DropdownMenuItem(
            child: Text(item[2]),
            value: 3,
          ),
        ],
        onChanged: (value) {
          setState(() {});
        },
        hint: Text(hint),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF122F51), width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}