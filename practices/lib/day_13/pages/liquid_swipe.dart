import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'dashboard.dart';

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
        const Dashboard(),
        Container(
          color: Colors.yellow,
          child: Stack(
            children: const [
              Positioned(
                top: 100,
                left: 40,
                child:Text(
                  '2nd Page,\nFlutter Liquide Swipe\npackage',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.red,
          child: Stack(
            children: const [
              Positioned(
                top: 100,
                left: 40,
                child:Text(
                  '3rd Page,\nFlutter Liquide Swipe\npackage',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.blue,
          child: Stack(
            children: const [
              Positioned(
                top: 100,
                left: 40,
                child:Text(
                  '4th Page,\nFlutter Liquide Swipe\npackage',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25
                  ),
                ),
              )
            ],
          ),
        ),
      ],
      slideIconWidget: const Icon(Icons.arrow_back_ios_new),
      waveType: WaveType.liquidReveal,
    );
  }
}
