import 'package:flutter/material.dart';
import 'package:quiz_app/models/Quiz.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber({super.key, required this.quiz});

  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xff8f85ff),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.autorenew, color: Colors.deepPurple),
          Text(
            'Question ${quiz.NumberQuestion}',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
