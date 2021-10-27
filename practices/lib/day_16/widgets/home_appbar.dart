import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,right: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Home',
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Annie Bryant',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40,right: 40),
                transform: Matrix4.rotationZ(100),
                child:Stack(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,size: 30,color: Colors.grey,
                    ),
                    Positioned(
                      top: 0,right: 0,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              ClipOval(
                child: Image.asset('assets/images/avatar.png',width: 40),

              ),
            ],
          ),
        ],
      ),
    );
  }
}