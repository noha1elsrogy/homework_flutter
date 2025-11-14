import 'package:flutter/material.dart';
import 'package:quiz_application/models/quiz.dart';

import 'package:quiz_application/widgets/Body_Question_Screen.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Question question;
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
          PageViewScreen(),
        ],
      ),
    );
  }
}
