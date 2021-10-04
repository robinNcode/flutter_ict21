import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class ShuduLiquide extends StatefulWidget {
  const ShuduLiquide({Key? key}) : super(key: key);

  @override
  _ShuduLiquideState createState() => _ShuduLiquideState();
}

class _ShuduLiquideState extends State<ShuduLiquide> {
  @override
  Widget build(BuildContext context) {
    return LiquidSwipe(
      pages: [
        Container(
          color: Colors.yellow,
        ),
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.blue,
        ),
      ],
      slideIconWidget: Icon(Icons.arrow_back_ios_new),
      waveType: WaveType.liquidReveal,
    );
  }
}
