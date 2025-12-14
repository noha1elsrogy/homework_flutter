import 'package:chat_ai_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatBot());
}

class ChatBot extends StatelessWidget {
  const ChatBot();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
