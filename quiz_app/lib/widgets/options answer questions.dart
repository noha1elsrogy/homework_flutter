import 'package:flutter/material.dart';
import 'package:quiz_app/models/Quiz.dart';
import 'package:quiz_app/widgets/card%20answer%20question.dart';

class OptionsQuestionsAnswers extends StatelessWidget {
  const OptionsQuestionsAnswers({super.key, required this.quiz});

  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardAnswerQuestion(answerText: '${quiz.options[0]}', quiz: quiz),
        CardAnswerQuestion(answerText: '${quiz.options[1]}', quiz: quiz),
        CardAnswerQuestion(answerText: '${quiz.options[2]}', quiz: quiz),
        CardAnswerQuestion(answerText: '${quiz.options[3]}', quiz: quiz),
      ],
    );
  }
}
