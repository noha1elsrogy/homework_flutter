import 'dart:async';

import 'package:chat_ai_app/screens/welcome_screen.dart';

import 'package:flutter/material.dart';
import 'package:chat_ai_app/generated/assets.dart'; // لو عندك assets

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Image.asset(Assets.imagesSplashScreenImg, fit: BoxFit.fill),
      ),
    );
  }
}
