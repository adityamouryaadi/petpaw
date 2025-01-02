import 'package:flutter/material.dart';
import 'package:petpaw/screens/home_screen.dart';
import 'package:petpaw/screens/notification_screen.dart';
import 'package:petpaw/screens/message_screen.dart';
import 'package:petpaw/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<MainScreen> {
  var selected = 0;
  List screenList = [
    HomeScreen(),
    MessageScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selected],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selected,
        onTap: (value) {
          setState(() {
            selected = value;
          });
        },
        selectedItemColor: Colors.red,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.message_outlined),
              label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
    );
  }
}
