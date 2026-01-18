import 'package:chat_ai_app/models/chat_model.dart';
import 'package:flutter/material.dart';

class CustomResponseContainer extends StatelessWidget {
  final String massegeResponse;
  @override
  const CustomResponseContainer({super.key, required this.massegeResponse});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 29),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft, // تحطها على اليمين

            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ), // التحكم الداخلي بدقة
              margin: const EdgeInsets.all(8), // المسافة من حول الـ Container
              constraints: BoxConstraints(
                maxWidth:
                    MediaQuery.of(context).size.width *
                    0.7, // الحد الأقصى للعرض
              ),
              decoration: BoxDecoration(
                color: Color(0xffEEEEEE), // لون الخلفية
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(12),
                  topRight: const Radius.circular(12),
                  bottomLeft: const Radius.circular(0),
                  bottomRight: const Radius.circular(12),
                ), // التحكم في حواف كل زاوية بالمللي
                border: Border.all(
                  color: Colors.black.withOpacity(
                    0.1,
                  ), // خط خفيف حول الـ Container
                  width: 0.5, // سمك الخط بالمللي
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ], // ظل خفيف جداً
              ),
              child: Text(
                massegeResponse,
                style: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
