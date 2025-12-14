import 'package:chat_ai_app/generated/assets.dart';
import 'package:chat_ai_app/widgets/custom_button_continue.dart';
import 'package:chat_ai_app/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // النص في المساحة الكبيرة فوق
          Expanded(child: WelcomeText()),

          // الصورة
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 34, right: 21),
              child: Image.asset(Assets.imagesWelcomeImg, fit: BoxFit.contain),
            ),
          ),

          SizedBox(height: 34),

          // زر Continue
          CustomButtonContinue(),
        ],
      ),
    );
  }
}
