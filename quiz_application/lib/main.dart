import 'package:flutter/material.dart';
import 'package:quiz_application/screens/start_screen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StartScreen());
  }
}
