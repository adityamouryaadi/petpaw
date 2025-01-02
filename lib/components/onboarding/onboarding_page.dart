import 'package:flutter/material.dart';
import 'package:petpaw/components/onboarding/threedots.dart';
import 'package:petpaw/screens/home_screen.dart';
import 'package:petpaw/components/onboarding/wel_screen.dart';
import 'package:petpaw/screens/welcome_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required PageController pageViewController,
    required this.image1,
    required this.text1,
    required this.text2,
    required this.currentpage,
  }) : _pageViewController = pageViewController;
  final int currentpage;
  final PageController _pageViewController;

  final String image1;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Image.asset(
              image1,
              height: 400,
            ),
            SizedBox(
              height: 20,
            ),
            Threedots(
              currentpage: currentpage,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              text1,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(horizontal: 132),
              child: Text(
                text2,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                maxLines: 3,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentpage == 1
                      ? TextButton(
                          onPressed: () {
                            _pageViewController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(
                            "Back",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : TextButton(
                          onPressed: () {},
                          child: Text(
                            "Skip",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                  currentpage == 2
                      ? ElevatedButton(
                          onPressed: () {
                            _pageViewController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 36, vertical: 12),
                            backgroundColor: Colors.purple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: Text(
                            'Get Started',
                            style: TextStyle(fontSize: 28, color: Colors.white),
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            _pageViewController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(16),
                            backgroundColor: Colors.purple,
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
