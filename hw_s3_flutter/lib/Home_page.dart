import 'package:flutter/material.dart';
import 'package:hw_s3_flutter/Male_Famale_Section.dart';
import 'package:hw_s3_flutter/calculate_button.dart';
import 'package:hw_s3_flutter/heigh_section.dart';
import 'package:hw_s3_flutter/weight_age_section.dart';

class HomeBage extends StatelessWidget {
  const HomeBage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03051a),
      appBar: AppBar(
        backgroundColor: Color(0xff04061c),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                MaleFemaleSection(),
                Row(
                  children: [
                    HeightItem(),
                  ],
                ),
                WeightAndHeghtSection(),
              ],
            ),
          ),
          const Spacer(),
          CalculateButton(
            onPressed: () {
              // TODO: Add calculation logic
            },
          ),
        ],
      ),
    );
  }
}
