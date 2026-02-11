import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color backGroundColor;
  final Color foreGroundColor;
  final String ButtonText;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.backGroundColor,
    required this.foreGroundColor,
    required this.ButtonText,
    required this.onPressed,
  });
  //: _formKey = formKey;

  // final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
        // if (_formKey.currentState!.validate()) {
        //   await Future.delayed(const Duration(seconds: 2));
        // }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backGroundColor,
        foregroundColor: foreGroundColor,
        // backgroundColor: const Color(0xFF667eea),
        // foregroundColor: Colors.white,
        elevation: 8,
        shadowColor: const Color(0xFF667eea).withValues(alpha: 0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        ButtonText,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
