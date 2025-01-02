import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.tune),
            ),
          ),
          Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 114, 189, 250)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Cats',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Dogs',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Birds',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade100),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Fishs',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
