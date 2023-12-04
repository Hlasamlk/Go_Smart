import 'package:flutter/material.dart';
import 'package:go_smart/boards/board1.dart';
import 'package:go_smart/boards/board2.dart';
import 'package:go_smart/boards/board3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  bool onlastpage = false;

  List images = [
    'assets/image 1.jpg',
    'assets/image 2.jpg',
    'assets/image 3.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff6E5340),
        body: Stack(
          children: [
            PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  onlastpage = (index == 2);
                });
              },
              children: [
                board1(),
                board2(),
                board3(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'WelcomeScreen');
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )),
                      const SizedBox(
                        width: 120,
                      ),
                      onlastpage
                          ? ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context,'WelcomeScreen');
                              },
                              child: Text('done'),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          side: const BorderSide(
                                              color: Color(0xff376B95))))),
                            )
                          : ElevatedButton(
                              onPressed: () {
                                controller.nextPage(
                                    duration: const Duration(microseconds: 500),
                                    curve: Curves.easeIn);
                              },
                              child: const Text('Next >'),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          side: const BorderSide(
                                              color: Color(0xff376B95))))),
                            )
                    ],
                  ),
                  SizedBox(
                    height: 130,
                  ),
                ],
              ),
            ),

            //for the 3 points
            Container(
                alignment: Alignment(0, .80),
                child: SmoothPageIndicator(controller: controller, count: 3)),
          ],
        ));
  }
}
