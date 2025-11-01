import 'package:flutter/material.dart';

class MaleFemaleCard extends StatelessWidget {
  final Color colorCard;
  final Icon icon;
  final String text;

  const MaleFemaleCard({
    super.key,
    required this.colorCard,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(height: 15),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
        height: 170,
      ),
    );
  }
}
