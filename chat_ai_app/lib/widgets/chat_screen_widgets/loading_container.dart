import 'package:chat_ai_app/widgets/three_dot_animation.dart';
import 'package:flutter/material.dart';

class LoadingContainer extends StatelessWidget {
  LoadingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffEEEEEE),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(0),
        ),
        border: Border.all(
          color: Colors.black.withOpacity(0.1),
          width: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const ThreeDotAnimation(color: Colors.black),
    );
  }
}
