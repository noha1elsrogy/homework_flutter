import 'package:flutter/material.dart';
import 'package:quiz_application/models/quiz.dart';
import 'package:quiz_application/widgets/options_secton/card_option_item.dart';

class OptionsSection extends StatelessWidget {
  // String? chooseAnswer; //تبع ال Radio
  List<Widget> optionSection = [];

  OptionsSection({super.key, required this.optionSection});

  @override
  Widget build(BuildContext context) {
    return Column(children: optionSection);
  }
}
