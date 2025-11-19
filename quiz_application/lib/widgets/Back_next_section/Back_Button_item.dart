import 'package:flutter/material.dart';
import 'package:quiz_application/styles/Text_styles_app.dart';

class BackButtoon extends StatelessWidget {
  final PageController pageController;
  const BackButtoon({
    super.key,
    required this.pageController,
    required this.onComplete,
  });
  final VoidCallback onComplete;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
        onPressed: () {
          pageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.arrow_back_ios, color: Colors.white),
            SizedBox(width: 10),

            Text('Back', style: TextStylesApp.h3Style()),
          ],
        ),
      ),
    );
  }
}
