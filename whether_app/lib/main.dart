import 'package:flutter/material.dart';
import 'package:whether_app/Widgets/Future_builder_statues_whether.dart';
import 'package:whether_app/models/whether_model.dart';
import 'package:whether_app/screens/Whether_Statues.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WhetherStatues(),
      ),
    );
  }
}
