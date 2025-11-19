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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'your Score .....${questionManager.totaldegreefunction(question)}',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
