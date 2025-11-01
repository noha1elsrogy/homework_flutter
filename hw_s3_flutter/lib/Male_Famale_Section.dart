import 'package:flutter/material.dart';
import 'package:hw_s3_flutter/MaleFemaleCard.dart';

class MaleFemaleSection extends StatelessWidget {
  const MaleFemaleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MaleFemaleCard(
            colorCard: Color(0xff090b24),
            icon: Icon(
              Icons.female,
              color: Colors.white,
              size: 80,
            ),
            text: 'Female',
          ),
        ),
        Expanded(
          child: MaleFemaleCard(
              colorCard: Color(0xff16162e),
              icon: Icon(
                Icons.male,
                color: Colors.white,
                size: 80,
              ),
              text: 'Male'),
        ),
      ],
    );
  }
}
