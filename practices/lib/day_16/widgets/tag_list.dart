import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  @override
  _TagListState createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _tagList = <String>['All','⚡  Popular','⭐    Featured'];
  var selected  = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selected = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: selected == index? Theme.of(context).primaryColor.withOpacity(0.4):
                    Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: selected == index ? Theme.of(context).primaryColor.withOpacity(0.4):
                  Theme.of(context).primaryColor,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
              child: Text(_tagList[index]),
            ),
          );
        },
        itemCount: _tagList.length,
        separatorBuilder: (_,index)=>SizedBox(width: 15),
      ),
    );
  }
}
