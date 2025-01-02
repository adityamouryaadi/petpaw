import 'package:flutter/material.dart';
import 'package:petpaw/screens/home_screen.dart';

class CatProfileScreen extends StatefulWidget {
  const CatProfileScreen({super.key});

  @override
  State<CatProfileScreen> createState() => _CatProfileScreenState();
}

class _CatProfileScreenState extends State<CatProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: const Color.fromARGB(235, 246, 236, 162),
                    width: 500,
                    height: 300,
                    child: Image.asset(
                      'assets/catwbg-removebg-preview.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.more_vert, color: Colors.black),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Amber',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color.fromARGB(255, 119, 176, 223),
                                  size: 16,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Thornridge, Chicago (5km)',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 50),
                        CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite,
                            size: 16,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 174, 230, 176)),
                          child: Column(
                            children: [
                              Text(
                                'Male',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                'Sex',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 241, 198, 133)),
                          child: Column(
                            children: [
                              Text(
                                '1 Years',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                'Age',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          height: 80,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 147, 197, 238)),
                          child: Column(
                            children: [
                              Text(
                                '10 Kg',
                                style: TextStyle(color: Colors.black),
                              ),
                              Text(
                                'Weight',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.red,
                                  child: ClipOval(
                                    child: Image.network(
                                      'https://th.bing.com/th/id/OIP.EOzmT_hLzQjpWXHT67TyaAHaEK?w=326&h=183&c=7&r=0&o=5&pid=1.7',
                                      fit: BoxFit.cover,
                                      width: 60,
                                      height: 60,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sophia',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Amber Owner',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(
                                          255, 168, 208, 241),
                                      shape: BoxShape.rectangle),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.message_outlined),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color.fromARGB(
                                          255, 240, 177, 175),
                                      shape: BoxShape.rectangle),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.call_outlined,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Amber is a cat that i have found on the side of the road 1 year ago he is now a cheerful and ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                            maxLines: 2,
                          ),
                          Row(
                            children: [
                              Text(
                                'active cat...',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'See more',
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 70,
                      width: 420,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Adobt Me',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
