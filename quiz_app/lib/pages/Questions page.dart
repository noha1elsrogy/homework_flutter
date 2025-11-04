import 'package:flutter/material.dart';
import 'package:quiz_app/models/Quiz.dart';
import 'package:quiz_app/widgets/Back%20and%20Next%20section.dart';
import 'package:quiz_app/widgets/Question%20number.dart';
import 'package:quiz_app/widgets/Text%20and%20Style%20widget.dart';
import 'package:quiz_app/widgets/card%20answer%20question.dart';
import 'package:quiz_app/widgets/options%20answer%20questions.dart';

class QuestionsPage extends StatelessWidget {
  QuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [Color(0xFFFFFFFF), Color(0xff2B0063)],
              radius: 0.8,
            ),
          ),
          child: BodyQuestionsPage(),
        ),
      ),
    );
  }
}

class BodyQuestionsPage extends StatelessWidget {
  Quiz quiz = Quiz(
    NumberQuestion: '1',
    question:
        'How would you describe your level of satisfaction with the healthcare system?',
    options: ['Strongly satisfied', 'Satisfied', 'Neutral', 'Dissatisfied'],
    answer: false,
  );
  BodyQuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionNumber(quiz: quiz),
            SizedBox(height: 10),
            TextandStyle(text: '${quiz.question}'),
            SizedBox(height: 40),

            OptionsQuestionsAnswers(quiz: quiz),

            Spacer(),

            BackAndNextSection(),
          ],
        ),
      ),
    );
  }
}
