import 'package:chat_ai_app/generated/assets.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.imagesExplainIcon),

          SizedBox(height: 18),
          CusomContainerHelp(text: 'Explain Quantum physics'),
          SizedBox(height: 8),
          CusomContainerHelp(text: 'What are wormholes explain like i am 5'),

          SizedBox(height: 18),
          Image.asset(Assets.imagesExplainIcon),

          SizedBox(height: 18),
          CusomContainerHelp(text: 'Write a tweet about global warming'),

          SizedBox(height: 8),
          CusomContainerHelp(text: 'Write a poem about flower and love'),

          SizedBox(height: 8),
          CusomContainerHelp(text: 'Write a rap song lyrics about'),

          SizedBox(height: 18),
          Image.asset(Assets.imagesTranslateIcon),

          SizedBox(height: 18),
          CusomContainerHelp(text: 'How do you say “how are you” in korean?'),
        ],
      ),
    );
  }
}

class CusomContainerHelp extends StatelessWidget {
  final String text;
  const CusomContainerHelp({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Color(0xffEEEEEE),
      ),

      child: Center(
        child: Padding(padding: const EdgeInsets.all(8.0), child: Text(text)),
      ),
    );
  }
}
