import 'package:flutter/material.dart';

class OptionsSection extends StatelessWidget {
  // String? chooseAnswer; //تبع ال Radio
  List<Widget> optionSection = [];

  OptionsSection({super.key, required this.optionSection});

  @override
  Widget build(BuildContext context) {
    return Column(children: optionSection);
    // return ListView.builder(itemBuilder: (context, index) {});
  }
}
