import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:go_smart/Widgets/SOcialButtons.dart';

import 'package:go_smart/Widgets/simpleTextForm.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color(0xFF242424),
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Welcome back , you have been missed',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SimpleTextForm(
              HintTEXT: 'example@gmail.com',
              TitleText: 'email',
              ObSecure: false,
            ),
            const SizedBox(
              height: 1,
            ),
            SimpleTextForm(
              HintTEXT: '*****',
              TitleText: 'password',
              ObSecure: true,
            ),
            GestureDetector(
              onTap: (() {}),
              child: Text(
                'forget password?',
                style: TextStyle(
                    color: Color(0xff376B95),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                child: Container(
                  width: 320,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xff376B95),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  alignment: const Alignment(0, .75),
                  child: const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff376B95),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Or sign In  with',
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff376B95),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 32,
              width: 144,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(SocialImage: 'assets/apple-fill.png'),
                  SizedBox(
                    width: 14,
                  ),
                  SocialButton(SocialImage: 'assets/google-fill.png'),
                  SizedBox(
                    width: 14,
                  ),
                  SocialButton(SocialImage: 'assets/facebook-circle-fill.png'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Have no account?',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                GestureDetector(
                  onTap: () {},
                  child: GestureDetector(
                      onTap: (() {
                        Navigator.pop(context, 'CreateAccount');
                      }),
                      child: Text(
                        'Sign Up',
                        style:
                            TextStyle(color: Color(0xff376B95), fontSize: 12),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
