import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
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
        var name = _list[ptr].name;
        var location = _list[ptr].location;
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(url,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(name, style: const TextStyle(color: Colors.white, fontSize: 25)),
                    Text(location, style: const TextStyle(color: Colors.white, fontSize: 20))
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: (){},
                    child: const Icon(Icons.arrow_forward, color: Colors.white),
                    backgroundColor: Colors.deepOrange,
                    elevation: 20,
                  ),
                ),
              )
            ],
          );
        }
    );
  }
}