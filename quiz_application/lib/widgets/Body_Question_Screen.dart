import 'package:flutter/material.dart';
import 'package:quiz_application/models/quiz.dart';
import 'package:quiz_application/styles/Text_styles_app.dart';
import 'package:quiz_application/widgets/Back_Next_Button_Section.dart';
import 'package:quiz_application/widgets/options_secton/card_option_item.dart';
import 'package:quiz_application/widgets/options_secton/options_question_section.dart';

class BodyQuestions extends StatefulWidget {
  Question question;

  BodyQuestions({super.key, required this.question});

  @override
  State<BodyQuestions> createState() => _BodyQuestionsState();
}

class _BodyQuestionsState extends State<BodyQuestions> {
  QuestionManager questionManager = QuestionManager();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff8E84FF),

                borderRadius: BorderRadius.circular(16),
              ),

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/images/Icon Question.png'),
                    SizedBox(width: 8),
                    Text(
                      widget.question.NumberQuestion,
                      style: TextStylesApp.h4Style(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(widget.question.question, style: TextStylesApp.h1Style()),
            Spacer(),
            OptionsSection(
              optionSection: [
                CardOptionItem(
                  titleOptionsList: widget.question.titleoptions[0],
                  valueRadio: widget.question.titleoptions[0],
                ),
                SizedBox(height: 10),
                CardOptionItem(
                  titleOptionsList: widget.question.titleoptions[1],
                  valueRadio: widget.question.titleoptions[1],
                ),
                SizedBox(height: 10),
                CardOptionItem(
                  titleOptionsList: widget.question.titleoptions[2],
                  valueRadio: widget.question.titleoptions[2],
                ),
                SizedBox(height: 10),
                CardOptionItem(
                  titleOptionsList: widget.question.titleoptions[3],
                  valueRadio: widget.question.titleoptions[3],
                ),
              ],
            ),
            SizedBox(height: 24),
            Spacer(),
            BackAndNextSection(),
            SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewState();
}

class _PageViewState extends State<PageViewScreen> {
  QuestionManager questionManager = QuestionManager();

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        BodyQuestions(
          question: Question(
            NumberQuestion: 'question 1',
            question:
                'How would you describe your level of satisfaction with the healthcare system?',
            titleoptions: ['gg', 'hh', 'ju', 'h'],
          ),
        ),
        BodyQuestions(
          question: Question(
            NumberQuestion: 'question 2',
            question: 'question 22222222222222222?',
            titleoptions: ['tt', 'tt', 'yy', 'hh'],
          ),
        ),
      ],
      onPageChanged: (value) {},
    );
  }
}
