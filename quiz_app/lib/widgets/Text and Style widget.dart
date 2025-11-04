import 'package:flutter/material.dart';

class TextandStyle extends StatelessWidget {
  final String text;

  const TextandStyle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 30));
  }
}
