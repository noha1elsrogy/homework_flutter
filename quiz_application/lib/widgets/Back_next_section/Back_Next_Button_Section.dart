import 'package:flutter/material.dart';
import 'package:quiz_application/models/quiz.dart';
import 'package:quiz_application/screens/result_only_screen.dart';
import 'package:quiz_application/widgets/Back_next_section/Back_Button_item.dart';
import 'package:quiz_application/widgets/Back_next_section/Next_Button_Item.dart';

class BackAndNextSection extends StatelessWidget {
  final PageController pageController;
  final QuestionManager questionManager;
  final Question question;

  const BackAndNextSection({
    super.key,
    required this.pageController,
    required this.questionManager,
    required this.question,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackButtoon(
          pageController: pageController,
          onComplete: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultOnlyScreen(
                  questionManager: questionManager,
                  question: question,
                ),
              ),
            );
          },
        ),
        const Spacer(),
        NextButton(
          pageController: pageController,
          questionManager: questionManager,
          question: question,
        ),
      ],
    );
  }
}
