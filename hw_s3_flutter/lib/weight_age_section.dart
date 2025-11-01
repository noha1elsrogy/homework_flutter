import 'package:flutter/material.dart';
import 'package:hw_s3_flutter/weight_age_card.dart';

class WeightAndHeghtSection extends StatelessWidget {
  const WeightAndHeghtSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HeightWeightCard(
          attribute: 'WEIGHT',
          attributeNumber: '60',
        ),
        SizedBox(
          width: 2,
        ),
        HeightWeightCard(
          attribute: 'AGE',
          attributeNumber: '29',
        )
      ],
    );
  }
}
