import 'package:flutter/material.dart';
import 'package:petpaw/components/onboarding/onboarding_page.dart';
import 'package:petpaw/components/onboarding/onboardingnext.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageViewController = PageController();

  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
  }

  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(bottom: 100),
        child: PageView(
          controller: _pageViewController,
          scrollDirection: Axis.horizontal,
          children: [
            OnboardingPage(
              pageViewController: _pageViewController,
              image1: 'assets/OIP.jpg',
              text1: 'Find Your Destination',
              text2:
                  'All tourist destinations are in youn hands just click and find the conveince now in phone',
              currentpage: currentpage,
            ),
            OnboardingPage(
              pageViewController: _pageViewController,
              image1: 'assets/journey3.jpg',
              text1: 'Start Your Journey',
              text2:
                  'from this second you will find an amazing and diverse journey through the grip and click',
              currentpage: currentpage,
            ),
            OnboardingPage(
              pageViewController: _pageViewController,
              image1: 'assets/travel.jpg',
              text1: 'Travel the world',
              text2:
                  'Explore different places in different countries and find many surprises by your side',
              currentpage: currentpage,
            ),
            OnboardingNext(
              pageViewController: _pageViewController,
              image1: 'assets/R (1).jpg',
              text1: 'Pick Your Favourite Pet',
              text2: 'Pet Home',
              text3: 'BE A PET LOVER',
              color1: Colors.black,
              color2: Colors.purple,
              color3: Colors.grey,
              currentpage: currentpage,
            ),
          ],
          physics: BouncingScrollPhysics(),
          pageSnapping: true,
          onPageChanged: (index) {
            setState(() {
              currentpage = index;
            });
          },
        ),
      ),
    );
  }
}
