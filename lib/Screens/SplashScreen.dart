import 'package:flutter/material.dart';
import 'package:go_smart/Screens/OnBoardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), (() {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
         return OnBoardingScreen();
        }
      ));
    }));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff376B95),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Image.asset('assets/logo.png'),
          )),
          Text('Go Smart',
              style: TextStyle(
                color: Color(0xFF0FFFFFF),
                fontSize: 40,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.8,
              )),
        ],
      ),
    );
  }
}
