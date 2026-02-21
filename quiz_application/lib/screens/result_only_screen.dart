// ...existing code...
import 'package:flutter/material.dart';
import 'package:quiz_application/models/quiz.dart';

class ResultOnlyScreen extends StatelessWidget {
  const ResultOnlyScreen({
    Key? key,
    required this.questionManager,
    required this.question,
  }) : super(key: key);
  final QuestionManager questionManager;
  final Question question;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF060B26), Color(0xff1A1F37)],
              ),
            ),
          ),
          Center(
            child: Text(
              'Your Score: ${questionManager.totaldegreefunction(question)}',
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
