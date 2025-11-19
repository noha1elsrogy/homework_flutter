import 'package:flutter/material.dart';
import 'package:quiz_application/models/quiz.dart';
import 'package:quiz_application/screens/Question_Screen.dart';
import 'package:quiz_application/styles/Text_styles_app.dart';

class BodyStartScreen extends StatelessWidget {
  final QuestionManager questionManager;
  BodyStartScreen({super.key, required this.questionManager});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning ,', style: TextStylesApp.h3Style()),
            SizedBox(height: 10),
            Text('New topic is waiting', style: TextStylesApp.h1Style()),
            SizedBox(height: 120),
            Image.asset('assets/images/home_image.png'),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        QuestionScreen(questionManager: questionManager),
                  ),
                );
              },
              child: Container(
                // padding: EdgeInsets.all(16),
                height: 47,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Center(
                  child: Text('Start Quiz', style: TextStylesApp.h2Style()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
