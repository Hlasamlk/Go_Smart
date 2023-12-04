import 'package:flutter/material.dart';

class board3 extends StatelessWidget {
  const board3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset("assets/image 3.jpg",fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
          Column(
            children: [
              SizedBox(
                height: 160,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Text(
                  'Find the best hotels, Restaurants and activities, all in one place.',
                  style: TextStyle(
                      color: Color(0xFF0FFFFFF),
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      letterSpacing: .64),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
