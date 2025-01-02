import 'package:flutter/material.dart';
import 'package:petpaw/components/home/cat_card.dart';
import 'package:petpaw/components/home/categories_section.dart';
import 'package:petpaw/components/home/community_section.dart';
import 'package:petpaw/components/onboarding/wel_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Bottomnavi(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelScreen()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Chicago, US',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100,
                      shape: BoxShape.rectangle),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade100,
                    shape: BoxShape.rectangle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
          child: Column(
            children: [
              CommunitySection(),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          'View all',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CategoriesSection(),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Adobe Pet',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          'View all',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CatCard(
                        text1: 'Amber',
                        text2: 'Distance(5km)',
                        image1: 'assets/catwbg-removebg-preview.png',
                        color1: const Color.fromARGB(235, 246, 236, 162),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CatCard(
                        text1: 'Kitty',
                        text2: 'Distance(7km)',
                        image1: 'assets/OIP__2_-removebg-preview.png',
                        color1: const Color.fromARGB(255, 208, 219, 218),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CatCard(
                        text1: 'Joully',
                        text2: 'Distance(9km)',
                        image1: 'assets/op3-removebg-preview.png',
                        color1: const Color.fromARGB(255, 245, 207, 200),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CatCard(
                        text1: 'Bellie',
                        text2: 'Distance(3km)',
                        image1: 'assets/ty-removebg-preview.png',
                        color1: const Color.fromARGB(255, 159, 222, 241),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CatCard(
                        text1: 'Maxy',
                        text2: 'Distance(11km)',
                        image1: 'assets/ty1-removebg-preview.png',
                        color1: const Color.fromARGB(255, 224, 213, 213),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
