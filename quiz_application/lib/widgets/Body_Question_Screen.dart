import 'package:flutter/material.dart';
import 'package:quiz_application/models/quiz.dart';
import 'package:quiz_application/styles/Text_styles_app.dart';
import 'package:quiz_application/widgets/Back_next_section/Back_Next_Button_Section.dart';
import 'package:quiz_application/widgets/options_secton/card_option_item.dart';

class BodyQuestions extends StatefulWidget {
  final PageController pageController;
  final QuestionManager questionManager;
  Question question;

  BodyQuestions({
    super.key,
    required this.question,
    required this.questionManager,
    required this.pageController,
  });

  @override
  State<BodyQuestions> createState() => _BodyQuestionsState();
}

class _BodyQuestionsState extends State<BodyQuestions> {
  String? isSelected;

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
            SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: widget.question.titleoptions.length,
                itemBuilder: (context, index) {
                  final String option = widget.question.titleoptions[index];

                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CardOptionItem(
                      titleOptionsList: widget.question.titleoptions[index],

                      isSelected: widget.questionManager.isOptionSelected(
                        widget.question,
                        option,
                      ),

                      onChanged: () {
                        // isSelected = option;
                        setState(() {
                          widget.questionManager.upadteSlelectedAnswer(
                            widget.question,
                            option,
                          );
                          widget.questionManager.totaldegreefunction(
                            widget.question,
                          );

                          // widget.questionManager.selectedAnswersMap[widget
                          //         .question] =
                          //     isSelected!;
                          // widget.questionManager.totalGradeFunc(
                          //   widget.question,
                          // );
                        });
                      },
                    ),
                  );
                },
              ),
            ),

            // OptionsSection(
            //   optionSection: widget.question.titleoptions.map((option) {
            //     return Column(
            //       children: [
            //         CardOptionItem(
            //           titleOptionsList: option,
            //           valueRadio: option,
            //           isSelected: isSelected == option ? true : false,
            //           onChanged: () {
            //             isSelected = option;
            //             widget.questionManager.selectedAnswersMap[widget
            //                     .question] =
            //                 isSelected!;
            //             widget.questionManager.totalGradeFunc(widget.question);
            //             print(widget.questionManager.selectedAnswersMap);
            //             setState(() {});
            //           },
            //         ),
            //         SizedBox(height: 10),
            //       ],
            //     );
            //   }).toList(),
            // ),

            // CardOptionItem(
            //   titleOptionsList: widget.question.titleoptions[0],
            //   valueRadio: widget.question.titleoptions[0],
            //   isSelected: isSelected == widget.question.titleoptions[0]
            //       ? true
            //       : false,
            //   onChanged: () {
            //     isSelected = widget.question.titleoptions[0];
            //     widget.questionManager.selectedAnswersMap[widget.question] =
            //         isSelected!;
            //     widget.questionManager.totalGradeFunc(widget.question);
            //     print(widget.questionManager.selectedAnswersMap);

            //     setState(() {});
            //   },
            // ),
            // SizedBox(height: 10),
            // CardOptionItem(
            //   titleOptionsList: widget.question.titleoptions[1],
            //   valueRadio: widget.question.titleoptions[1],
            //   isSelected: isSelected == widget.question.titleoptions[1]
            //       ? true
            //       : false,
            //   onChanged: () {
            //     isSelected = widget.question.titleoptions[1];
            //     widget.questionManager.selectedAnswersMap[widget.question] =
            //         isSelected!;
            //     widget.questionManager.totalGradeFunc(widget.question);
            //     print(widget.questionManager.selectedAnswersMap);

            //     setState(() {});
            //   },
            // ),
            // SizedBox(height: 10),
            // CardOptionItem(
            //   titleOptionsList: widget.question.titleoptions[2],
            //   valueRadio: widget.question.titleoptions[2],
            //   isSelected: isSelected == widget.question.titleoptions[2]
            //       ? true
            //       : false,
            //   onChanged: () {
            //     isSelected = widget.question.titleoptions[2];
            //     widget.questionManager.selectedAnswersMap[widget.question] =
            //         isSelected!;
            //     widget.questionManager.totalGradeFunc(widget.question);
            //     print(widget.questionManager.selectedAnswersMap);

            //     setState(() {});
            //   },
            // ),
            // SizedBox(height: 10),
            // CardOptionItem(
            //   titleOptionsList: widget.question.titleoptions[3],
            //   valueRadio: widget.question.titleoptions[3],
            //   isSelected: isSelected == widget.question.titleoptions[3]
            //       ? true
            //       : false,
            //   onChanged: () {
            //     isSelected = widget.question.titleoptions[3];
            //     widget.questionManager.selectedAnswersMap[widget.question] =
            //         isSelected!;
            //     widget.questionManager.totalGradeFunc(widget.question);
            //     print(widget.questionManager.selectedAnswersMap);
            //     setState(() {});
            //   },
            // ),
            SizedBox(height: 24),
            // Spacer(),
            BackAndNextSection(
              pageController: widget.pageController,
              questionManager: widget.questionManager,
              question: widget.question,
            ),
            SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
