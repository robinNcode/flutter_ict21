import 'package:practices/day_10/widgets/travel_blog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Travel Blog',
                    style: TextStyle(
                      fontSize: 36,
                    )),
                Expanded(
                  flex: 2,
                  child: TravelBlog(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Most Popular',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Text('View All',
                        style:
                            TextStyle(fontSize: 16, color: Colors.deepOrange)),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: TravelBlog(),
                ),
              ],
            ),
          )),
    );
  }
}