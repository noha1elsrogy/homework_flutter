import 'package:flutter/material.dart';

class SettingProfile extends StatelessWidget {
  const SettingProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSettingProfile(text: 'Settings', colorContainer: Colors.blue),
        SizedBox(
          width: 12,
        ),
        CustomSettingProfile(text: 'Profile', colorContainer: Colors.orange)
      ],
    );
  }
}

class CustomSettingProfile extends StatelessWidget {
  final String text;
  final Color colorContainer;

  const CustomSettingProfile(
      {super.key, required this.text, required this.colorContainer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      decoration: BoxDecoration(
          color: colorContainer,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
