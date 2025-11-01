import 'package:flutter/material.dart';
import 'package:hw_s3_flutter/Home_page.dart';
import 'package:hw_s3_flutter/Male_Famale_Section.dart';
import 'package:hw_s3_flutter/heigh_section.dart';
import 'package:hw_s3_flutter/weight_age_section.dart';

void main() {
  runApp(S3());
}

class S3 extends StatelessWidget {
  const S3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeBage(),
    );
  }
}
