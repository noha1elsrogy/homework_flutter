import 'dart:async';

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/generated/assets.dart';
import 'package:ecommerce_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  // final  ChatModel chatModel;

  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimayColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: Image.asset(
              height: 226,
              width: 276,
              Assets.logoSplashscreen,
            ),
          ),
          SizedBox(height: 126),
        ],
      ),
    );
  }
}
