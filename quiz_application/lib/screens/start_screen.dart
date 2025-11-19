import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_application/models/quiz.dart';
import 'package:quiz_application/widgets/Body_start_screeen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // اللون اللي تحبيه
        statusBarIconBrightness: Brightness.light,
        // لون أيقونات الـ Status Bar
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF060B26), Color(0xff1A1F37)],
              ),
            ),
            // child: BodyStartPage(),
          ),
          Positioned.fill(
            child: Image.asset('assets/images/GRADINET.png', fit: BoxFit.cover),
          ),

          BodyStartScreen(questionManager: QuestionManager()),
        ],
      ),
    );
  }
}
