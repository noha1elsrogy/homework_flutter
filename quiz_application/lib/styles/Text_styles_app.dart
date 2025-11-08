import 'package:flutter/material.dart';

class TextStylesApp {
  static TextStyle h1Style() {
    return TextStyle(fontSize: 24, letterSpacing: 0, color: Colors.white);
  }

  // H2 Style
  static TextStyle h2Style() {
    return TextStyle(fontSize: 18, letterSpacing: 0, color: Color(0xff2B0063));
  }

  // H3 Style
  static TextStyle h3Style() {
    return TextStyle(fontSize: 16, letterSpacing: 0, color: Colors.white);
  }

  // H4 Style
  static TextStyle h4Style() {
    return TextStyle(fontSize: 12, letterSpacing: 0, color: Colors.white);
  }
}
