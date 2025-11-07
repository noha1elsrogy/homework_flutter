import 'package:flutter/material.dart';
import 'package:quiz_app/models/Quiz.dart';

class CardAnswerQuestion extends StatelessWidget {
  final String answerText;
  const CardAnswerQuestion({
    super.key,
    required this.answerText,
    required Question quiz,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Radio(
          fillColor: MaterialStateColor.resolveWith(
            (states) => Color(0xff4f2c7d),
          ),

          value: answerText,
          onChanged: (value) {},
        ),
        title: Text(answerText, style: TextStyle(color: Color(0xff4f2c7d))),
      ),
    );
  }
}
