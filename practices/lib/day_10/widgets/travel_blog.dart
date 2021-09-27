import 'package:practices/day_10/models/travel.dart';
import 'package:flutter/material.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.generateTravelBlog();

  TravelBlog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
        itemCount: _list.length,
        itemBuilder: (context, ptr){
        var url = _list[ptr].url;
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(url,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover
                ),
              )
            ],
          );
        }
    );
  }
}