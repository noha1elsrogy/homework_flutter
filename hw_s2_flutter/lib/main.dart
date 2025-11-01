import 'package:flutter/material.dart';
import 'package:hw_s2_flutter/feutures.dart';
import 'package:hw_s2_flutter/quickStarted.dart';
import 'package:hw_s2_flutter/setting_and_profile.dart';
import 'package:hw_s2_flutter/startedApp.dart';

void main() {
  runApp(HwS2());
}

class HwS2 extends StatelessWidget {
  const HwS2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfffef7ff),
        appBar: AppBar(
          title: Row(
            children: [
              Icon(
                Icons.arrow_back,
              ),
              Text(
                'flutter Application',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StartedApp(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Quick Stats',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              QuickStart(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Feautures',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Feutures(),
              SizedBox(
                height: 20,
              ),
              SettingProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
