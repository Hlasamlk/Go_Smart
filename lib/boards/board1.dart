import 'package:flutter/material.dart';

class board1 extends StatelessWidget {
  const board1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset("assets/image 1.jpg",fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
          Column(
            children: [
              SizedBox(
                height: 191,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Discover the wonders of Egypt!',
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
