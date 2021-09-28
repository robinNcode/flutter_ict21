import 'package:flutter/material.dart';
import 'package:practices/day_10/models/most_popular.dart';

class MostPopularWidget extends StatelessWidget {
  final _mostPopular = MostPopular.generateMostPopular();

  MostPopularWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: _mostPopular.length,
        itemBuilder: (BuildContext ctx, ptr) {
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(_mostPopular[ptr].url,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover
                ),
              ),
            ],
          );
        });
  }
}
