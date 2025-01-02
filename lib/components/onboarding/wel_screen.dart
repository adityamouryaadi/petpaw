import 'package:flutter/material.dart';
import 'package:petpaw/screens/home_screen.dart';
import 'package:petpaw/screens/login_screen.dart';

class WelScreen extends StatefulWidget {
  const WelScreen({super.key});

  @override
  State<WelScreen> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.green[50],
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset(
                      'assets/R (1).jpg',
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
                  'Pick Your Favourite Pet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                  child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.purple,
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
                    'Pet Home',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    'BE A PET LOVER',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
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
