import 'package:flutter/material.dart';
import 'package:quiz_application/styles/Text_styles_app.dart';
import 'package:quiz_application/widgets/Back_Next_Button_Section.dart';
import 'package:quiz_application/widgets/options_question_section.dart';

class BodyQuestions extends StatelessWidget {
  
  BodyQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/Icon Question.png'),
                  SizedBox(width: 8),
                  Text('Question 1', style: TextStylesApp.h4Style()),
                ],
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'How would you describe your level of satisfaction with the healthcare system?',
            style: TextStylesApp.h1Style(),
          ),
          SizedBox(height: 25),
          OptionsSection(),
          SizedBox(height: 20),
          BackAndNextSection(),
        ],
      ),
    );
  }
}
