import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  SocialButton({super.key, required this.SocialImage});
  String SocialImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        
      }),
      child: Image.asset(SocialImage));
   
  }
}
