import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle blueNunito23Normal(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Nunito',
      fontSize: 23,
      letterSpacing: 0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle grayNunito15Normal() {
    return const TextStyle(
      color: Color.fromRGBO(117, 117, 117, 1),
      fontFamily: 'Nunito',
      fontSize: 15,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
    );
  }
}
