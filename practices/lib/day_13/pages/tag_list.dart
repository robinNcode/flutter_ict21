import 'package:flutter/cupertino.dart';

class TagList extends StatelessWidget {
  TagList({Key? key}) : super(key: key);

  final _tagList = <String>['All', "Popular", "Featured"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
      ),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10,),
              child: Text(
                _tagList[index],
              ),
            );
          },
          separatorBuilder: (_, index) => SizedBox(
            width: 25,
          ),
          itemCount: _tagList.length),
    );
  }
}