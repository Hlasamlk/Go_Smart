import 'package:flutter/material.dart';
import 'package:go_smart/boards/board_done.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          board_done(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: (() {
                      Navigator.pushNamed(context, 'CreateAccount');
                  }),
                  child: Container(
                    width: 320,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xff376B95),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: const Alignment(0, .75),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'SignInScreen');
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Color(0xff376B95), fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              )
            ],
          )
        ],
      ),
    );
  }
}
