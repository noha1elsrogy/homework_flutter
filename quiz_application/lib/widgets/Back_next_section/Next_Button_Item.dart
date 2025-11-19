import 'package:flutter/material.dart';
import 'package:quiz_application/models/quiz.dart';
import 'package:quiz_application/screens/result_only_screen.dart';
import 'package:quiz_application/styles/Text_styles_app.dart';

class NextButton extends StatefulWidget {
  final QuestionManager questionManager;
  final PageController pageController;
  final Question question;
  // int indexPge = 0;

  NextButton({
    super.key,
    required this.pageController,
    required this.questionManager,
    required this.question,
  });

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff849FFF),
          shadowColor: Colors.transparent,
          elevation: 0,
          side: const BorderSide(color: Colors.transparent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          int currentPage = widget.pageController.page!.round();

          if (currentPage < widget.questionManager.questions.length - 1) {
            widget.pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultOnlyScreen(
                  questionManager: widget.questionManager,
                  question: widget.question,
                ),
              ),
            );
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Next', style: TextStylesApp.h3Style()),
            const SizedBox(width: 10),
            const Icon(Icons.arrow_forward_ios, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
