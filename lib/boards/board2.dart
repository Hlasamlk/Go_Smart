import 'package:flutter/material.dart';

class board2 extends StatelessWidget {
  const board2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset("assets/image 2.jpg",fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
          Column(
            children: [
              SizedBox(
                height: 191,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Get insider tips and recommendations',
                  style: TextStyle(
                      color: Color(0xFF0FFFFFF),
                      fontSize: 32,
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
