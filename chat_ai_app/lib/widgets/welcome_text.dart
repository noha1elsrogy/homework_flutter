import 'package:chat_ai_app/styles/text_style_app.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'You AI Assistant',
          style: AppTextStyles.blueNunito23Normal(Colors.blue),
        ),
        SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Using this software,you can ask you questions and receive articles using artificial intelligence assistant ',
            style: AppTextStyles.grayNunito15Normal(),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
