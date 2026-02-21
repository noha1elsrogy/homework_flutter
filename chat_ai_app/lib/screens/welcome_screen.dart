import 'package:chat_ai_app/cubit/chat_cubit.dart';
import 'package:chat_ai_app/generated/assets.dart';
import 'package:chat_ai_app/models/chat_model.dart';
import 'package:chat_ai_app/widgets/custom_button_continue.dart';
import 'package:chat_ai_app/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});
  // final ChatService chatService;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PageView(children: [Welcome1(), Welcome1()]));
  }
}

class Welcome1 extends StatelessWidget {
  const Welcome1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
