import 'package:flutter/material.dart';
import 'package:hw_s1_flutter/containers.dart';

void main() {
  runApp(HwSession1());
}

class HwSession1 extends StatelessWidget {
  const HwSession1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 30),
            ContainerBlue(),
            SizedBox(height: 10),
            ContainerGray(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                thickness: 0.70,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            ContainerGreenAndYellow(),
            SizedBox(height: 10),
            ContainerPurple(),
            SizedBox(height: 10),
            ContainerGreen(),
            SizedBox(height: 10),
            ContainerGrey2(),
          ],
        ),
      ),
    );
  }
}
