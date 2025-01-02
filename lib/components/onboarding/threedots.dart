import 'package:flutter/material.dart';

class Threedots extends StatelessWidget {
  const Threedots({super.key, required this.currentpage});

  final int currentpage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentpage == 0
            ? Icon(
                Icons.circle,
                size: 10,
                color: Colors.deepPurple,
              )
            : Icon(Icons.circle_outlined, color: Colors.deepPurple, size: 10),
        currentpage == 1
            ? Icon(
                Icons.circle,
                size: 10,
                color: Colors.deepPurple,
              )
            : Icon(Icons.circle_outlined, color: Colors.deepPurple, size: 10),
        currentpage == 2
            ? Icon(
                Icons.circle,
                size: 10,
                color: Colors.deepPurple,
              )
            : Icon(
                Icons.circle_outlined,
                color: Colors.deepPurple,
                size: 10,
              ),
      ],
    );
  }
}
