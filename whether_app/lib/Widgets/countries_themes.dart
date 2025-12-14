import 'package:flutter/material.dart';

class CountryTheme {
  static Map<String, List<Color>> countryGradients = {
    "Egypt": [Colors.orange, Colors.white],
    "France": [Colors.blue, Colors.white],
    "Japan": [Colors.red, Colors.white],
    "USA": [Colors.deepOrangeAccent, Colors.white],
    "Germany": [Colors.purple, Colors.white],
  };

  static List<Color> getGradient(String country) {
    return countryGradients[country] ?? [Colors.green, Colors.white];
  }
}
