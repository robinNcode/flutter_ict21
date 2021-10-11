import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40,horizontal: 25),
      margin: EdgeInsets.all(25),
      width: double.maxFinite,
      height:300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage('assets/images/search_bg.png'),
          fit: BoxFit.cover
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            'Fast Search',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),
          ),
          SizedBox(height: 10),
          Text(
            'You Can Search QUickly for\n the job you want',
            style: TextStyle(height: 1.8,color: Colors.white),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                Image.asset('assets/icons/search.png',width: 20),
                SizedBox(width: 10),
                Text(
                  'Search',
                  style: TextStyle(fontSize: 18,color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
