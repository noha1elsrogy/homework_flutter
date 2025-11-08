import 'package:flutter/material.dart';
import 'package:quiz_application/styles/Text_styles_app.dart';

class BackAndNextSection extends StatelessWidget {
  const BackAndNextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              elevation: 0,
              side: const BorderSide(color: Color(0xff849FFF), width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_back_ios, color: Colors.white),
                SizedBox(width: 10),

                Text('Back', style: TextStylesApp.h3Style()),
              ],
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 3,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff849FFF),
              shadowColor: Colors.transparent,
              elevation: 0,
              side: const BorderSide(color: Colors.transparent),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Next', style: TextStylesApp.h3Style()),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
