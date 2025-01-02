import 'package:flutter/material.dart';
import 'package:petpaw/components/onboarding/wel_screen.dart';
import 'package:petpaw/screens/login_screen.dart';

class OnboardingNext extends StatelessWidget {
  const OnboardingNext({
    super.key,
    required PageController pageViewController,
    required this.image1,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.currentpage,
  }) : _pageViewController = pageViewController;
  final int currentpage;
  final PageController _pageViewController;

  final String image1;
  final String text1;
  final String text2;
  final String text3;
  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    image1,
                    fit: BoxFit.contain,
                    height: 350,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: color1,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
                child: CircleAvatar(
              radius: 40,
              // backgroundColor: Colors.green,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: color2,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            )),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: color2,
                  ),
                ),
                Text(
                  text3,
                  style: TextStyle(
                    fontSize: 14,
                    color: color3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
