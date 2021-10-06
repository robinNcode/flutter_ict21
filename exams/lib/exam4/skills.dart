import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: _size.height / 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: _size.width/8),
                child: LinearPercentIndicator(
                  width: _size.width - 100,
                  lineHeight: 8.0,
                  percent: 0.4,
                  progressColor: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
