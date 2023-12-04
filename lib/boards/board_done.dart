import 'package:flutter/material.dart';

class board_done extends StatelessWidget {
  const board_done({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset("assets/welcome.jpg",fit: BoxFit.fill,height: double.infinity,width: double.infinity,),
          Column(
            children: [
              SizedBox(
                height: 191,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      'welcome to ',
                      style: TextStyle(
                          color: Color(0xFF0FFFFFF),
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          letterSpacing: .64),
                    ),
                    Text(
                      'Go Smart ',
                      style: TextStyle(
                          color: Color(0xff376B95),
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          letterSpacing: .64),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
