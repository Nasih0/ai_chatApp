import 'dart:async';

import 'package:ai_chat_app/myhome_page.dart';
import 'package:flutter/material.dart';
//import 'package:your_app/myhome_page.dart'; // Import your MyHomePage.dart file

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..forward();
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => MyHomePage(),
      ));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _animation,
              child: Image.asset(
                'lib/assets/robo.png', // Replace with your image path
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            FadeTransition(
              opacity: _animation,
              child: Text(
                "Hello, this is your AI friend. Let's start communicating!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
