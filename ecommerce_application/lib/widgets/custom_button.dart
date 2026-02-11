import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color colorButton;
  final Color textColor;
  final Color borderColor;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.text,
    required this.colorButton,
    required this.textColor,
    required this.onTap,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: colorButton,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: borderColor, // لون الإطار
            width: 2, // سماكة الإطار
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
          ),
        ),
      ),
    );
  }
}
