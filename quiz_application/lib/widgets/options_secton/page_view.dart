import 'package:flutter/material.dart';
import 'package:quiz_application/models/quiz.dart';
import 'package:quiz_application/widgets/Body_Question_Screen.dart';

class PageViewScreen extends StatefulWidget {
  final QuestionManager questionManager;
  PageController pageController = PageController();
  void dispose() {
    pageController.dispose();
  }

  PageViewScreen({super.key, required this.questionManager});

  @override
  State<PageViewScreen> createState() => _PageViewState();
}

class _PageViewState extends State<PageViewScreen> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.pageController,
      itemCount: widget.questionManager.questions.length,
      itemBuilder: (context, index) {
        return BodyQuestions(
          question: widget.questionManager.questions[index],
          questionManager: widget.questionManager,
          pageController: widget.pageController,
        );
      },
    );
    // return PageView(
    //   children: [
    //     BodyQuestions(
    //       question: widget.questionManager.questions[0],
    //       questionManager: widget.questionManager,
    //     ),
    //     BodyQuestions(
    //       question: widget.questionManager.questions[1],
    //       questionManager: widget.questionManager,
    //     ),
    //     BodyQuestions(
    //       question: widget.questionManager.questions[2],
    //       questionManager: widget.questionManager,
    //     ),
    //     BodyQuestions(
    //       question: widget.questionManager.questions[3],
    //       questionManager: widget.questionManager,
    //     ),
    //   ],
    //   //onPageChanged: (value) {},
    // );
  }
}
