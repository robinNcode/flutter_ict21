import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotJobWidget extends StatefulWidget {
  const HotJobWidget({Key? key}) : super(key: key);

  @override
  _HotJobWidgetState createState() => _HotJobWidgetState();
}

class _HotJobWidgetState extends State<HotJobWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      elevation: 3,
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        child: ListTile(
          onTap: () {},
          onLongPress: () {},
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          title: const Text(
            'mindTree',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          subtitle: const Text(
            'Creative Visualizer (3D Animation), Digital Media',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),
          ),
          leading: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.teal,
            size: 30,
          ),
          trailing: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
            child: Image.asset('assets/exam6/images/dbbl.png')
          ),
        ),
      ),
    );
  }
}
