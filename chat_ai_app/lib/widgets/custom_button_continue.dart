import 'package:chat_ai_app/generated/assets.dart';
import 'package:chat_ai_app/styles/text_style_app.dart';
import 'package:flutter/material.dart';

class CustomButtonContinue extends StatelessWidget {
  const CustomButtonContinue({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 21, bottom: 34),
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          alignment: Alignment.center, // 🟢 النص في منتصف الكونتينر
          children: [
            Center(
              child: Text(
                'Continue',
                style: AppTextStyles.blueNunito23Normal(Colors.white),
              ),
            ),
            Positioned(
              right: 16, // 🟢 الصورة في الطرف الأيمن مع المسافة
              child: Image.asset(Assets.imagesArrowRight),
            ),
          ],
        ),
      ),
    );
  }
}
