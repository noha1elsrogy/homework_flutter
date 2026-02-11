import 'package:flutter/material.dart';

class WelcomeHeader extends StatelessWidget {
  final Icon icon;
  final String welcomeText;
  final String subTextWelcome;
  const WelcomeHeader({
    super.key,
    required this.icon,
    required this.welcomeText,
    required this.subTextWelcome,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.2),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: icon,
        ),
        const SizedBox(height: 40),
        const Text(
          'Welcome Back',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Sign in to continue',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white.withValues(alpha: 0.9),
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
