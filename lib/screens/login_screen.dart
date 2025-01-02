import 'package:flutter/material.dart';
import 'package:petpaw/screens/main_screen.dart';
import 'package:petpaw/screens/home_screen.dart';
import 'package:petpaw/screens/signup_screen.dart';
import 'package:petpaw/components/onboarding/wel_screen.dart';
import 'package:petpaw/screens/welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WelScreen()),
            );
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.purple,
                    child: Icon(Icons.pets, size: 50, color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://th.bing.com/th/id/OIP.CRnZunkUzOlF9Wd4NgBnKAHaHZ?rs=1&pid=ImgDetMain',
                        height: 100,
                        // width: 100,
                      ),
                      // Icon(Icons.login, size: 50, color: Colors.greenAccent),
                      // Text(
                      //   'Login',
                      //   style: TextStyle(fontSize: 16, color: Colors.greenAccent),
                      // ),
                    ],
                  ),
                  SizedBox(width: 16),
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.purple,
                    child: Icon(Icons.pets, size: 50, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' USERNAME ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.purple,
                      ),
                      hintText: 'Enter Your Username',
                      hintStyle: TextStyle(color: Colors.purple),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(25),
                      //     borderSide: BorderSide(color: Colors.purple)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' PASSWORD ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.purple),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.purple,
                      ),
                      suffixIcon: Icon(Icons.visibility_off_outlined,
                          color: Colors.purple),
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(color: Colors.purple),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(25),
                      //     borderSide: BorderSide(color: Colors.purple)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Forget()),
                            // );
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      side: BorderSide(color: Colors.purple),
                      minimumSize: Size(160, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeScreen()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("------ Or Login with ------"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(100, 70),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              side: BorderSide(color: Colors.purple),
                            ),
                            child: Icon(
                              Icons.facebook,
                              color: Colors.blue,
                              size: 40,
                            )),
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(100, 70),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              side: BorderSide(color: Colors.purple),
                            ),
                            child: Image.asset(
                              'assets/ggl.png',
                              height: 45,
                            )),
                        OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              minimumSize: Size(100, 70),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              side: BorderSide(color: Colors.purple),
                            ),
                            child: Icon(
                              Icons.apple,
                              color: Colors.black87,
                              size: 45,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()),
                            );
                          },
                          child: Text(
                            "Signup",
                            style: TextStyle(color: Colors.purple),
                          ),
                        )
                      ],
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
