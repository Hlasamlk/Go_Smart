import 'package:flutter/material.dart';
import 'package:go_smart/Screens/CreateAccount.dart';
import 'package:go_smart/Screens/SignInScreen.dart';
import 'package:go_smart/Screens/SplashScreen.dart';
import 'package:go_smart/Screens/WelcomeScreen.dart';
import 'package:go_smart/boards/board1.dart';
import 'package:go_smart/boards/board2.dart';
import 'package:go_smart/boards/board3.dart';
import 'package:go_smart/boards/board_done.dart';



import 'Screens/OnBoardingScreen.dart';

void main() {
  runApp(const GoSmart());
}
class GoSmart extends StatelessWidget {
  const GoSmart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'WelcomeScreen': (context) => const WelcomeScreen(),
        'CreateAccount': (context) => const CreateAccount(),
          'SignInScreen':(context) => SignInScreen(),
        
      },
      home:SplashScreen(),
    );
  }
}
