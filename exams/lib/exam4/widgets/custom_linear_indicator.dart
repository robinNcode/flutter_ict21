import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CustomLinearIndicator extends StatefulWidget {
  const CustomLinearIndicator({Key? key}) : super(key: key);

  @override
  _CustomLinearIndicatorState createState() => _CustomLinearIndicatorState();
}

class _CustomLinearIndicatorState extends State<CustomLinearIndicator> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return LinearPercentIndicator(
      width: _size.width / 3,
      lineHeight: 8.0,
      percent: 0.9,
      progressColor: Colors.green,
    );
  }
}
