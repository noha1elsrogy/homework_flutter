import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String YouHaveAccountOrNot;
  final String logInOrSiginUp;
  final VoidCallback onPressed;
  const Footer({
    super.key,
    required this.YouHaveAccountOrNot,
    required this.logInOrSiginUp,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          // "Don't have an account? ",
          YouHaveAccountOrNot,
          style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 15),
        ),
        TextButton(
          onPressed: onPressed,

          child: Text(
            logInOrSiginUp,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
