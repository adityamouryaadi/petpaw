import 'package:flutter/material.dart';

class CommunitySection extends StatelessWidget {
  const CommunitySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 186, 133, 196),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 90,
            width: 200,
            child: Column(
              children: [
                Text(
                  'Join Our Animal Lovers Community',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  maxLines: 2,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Join Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  'assets/download.png',
                  height: 180,
                  width: 170,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
