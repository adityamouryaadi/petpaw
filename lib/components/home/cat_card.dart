import 'package:flutter/material.dart';
import 'package:petpaw/screens/cat_profile_screen.dart';
import 'package:petpaw/screens/profile_screen.dart';

class CatCard extends StatelessWidget {
  const CatCard({
    super.key,
    required this.text1,
    required this.text2,
    required this.image1,
    required this.color1,
  });

  final String text1;
  final String text2;
  final String image1;
  final Color color1;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color1,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: color1, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        color: color1, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CatProfileScreen()),
                                );
                              },
                              child: Text(
                                text1,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 60),
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
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: const Color.fromARGB(255, 119, 176, 223),
                            ),
                            Text(
                              text2,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: 200,
              child: Image.asset(
                image1,
                height: 180,
                // width: 150,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
