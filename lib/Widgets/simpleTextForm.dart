import 'package:flutter/material.dart';

class SimpleTextForm extends StatelessWidget {
  SimpleTextForm({
    super.key,
    required this.HintTEXT,
    required this.TitleText,
    required this.ObSecure,
  });
  String HintTEXT;
  String TitleText;
  bool ObSecure = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              TitleText,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          TextField(
            obscureText: ObSecure,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffF0EFEF),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: HintTEXT,
            ),
          ),
        ],
      ),
    );
  }
}
