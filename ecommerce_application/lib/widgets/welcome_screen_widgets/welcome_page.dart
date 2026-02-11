import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_application/constants.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final String mainTitle;
  final String secondaryTitle;
  final String mainSubtitle;
  final String secondarySubtitle;
  final Widget actionWidget;
  final String imageAsset;
  final double currentPageIndex;
  final VoidCallback backAction;

  const WelcomePage({
    super.key,
    required this.mainTitle,
    required this.secondaryTitle,
    required this.mainSubtitle,
    required this.secondarySubtitle,
    required this.imageAsset,
    required this.actionWidget,
    required this.currentPageIndex,
    required this.backAction,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                backAction();
              },
              child: Icon(Icons.arrow_back, size: 38, color: kPrimayColor),
            ),
            SizedBox(height: 56),

            Center(child: Image.asset(imageAsset)),
            SizedBox(height: 22),
            Center(
              child: Text(
                mainTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Center(
              child: Text(
                secondaryTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            SizedBox(height: 22),
            Center(
              child: Text(
                mainSubtitle,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
            ),
            Center(
              child: Text(
                secondarySubtitle,
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: currentPageIndex,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                      size: const Size(20, 8),
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      activeSize: const Size(20, 8),
                      activeColor: Colors.blue,
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      spacing: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
                // Spacer(),
                SizedBox(height: 41),
                actionWidget,
                SizedBox(height: 45),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
