import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  TagList({Key? key}) : super(key: key);

  final _tagList = <String>['All', "⚡ Popular", "⭐ Featured"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            Color _buttonColor =
            (index == 0) ? const Color(0xff9E9E9E) : Colors.white;
            return Container(
              height: 40,
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: _buttonColor,
                border: Border.all(
                  color: const Color(0xff9E9E9E),
                  width: 0.8,
                ),
              ),
              child: Text(
                _tagList[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
          separatorBuilder: (_, index) => const SizedBox(
            width: 10,
          ),
          itemCount: _tagList.length),
    );
  }
}
