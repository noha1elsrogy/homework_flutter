import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final VoidCallback onPressed;
  
  const CalculateButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: const Color(0xffea1556),
        width: double.infinity,
        height: 60,
        child: const Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}