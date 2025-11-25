import 'package:flutter/material.dart';
import 'package:whether_app/Widgets/text_field_section.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 28),
        backgroundColor: Colors.orangeAccent,
        title: Row(
          children: [
            // Icon(Icons.arrow_back, color: Colors.white),
            Text(
              'Search a City',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(child: TextFieldSection()),
      ),
    );
  }
}
