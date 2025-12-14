import 'package:flutter/material.dart';
import 'package:whether_app/models/whether_model.dart';
import 'package:whether_app/screens/search_screen.dart';

class WhetherStatues extends StatelessWidget {
  WhetherStatues({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Text(
              'Whether',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchScreen()),
                );
              },
              child: Icon(Icons.search, color: Colors.white),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'there is no Weather 😞start Searching now 🔍',
            style: TextStyle(fontSize: 26),
          ),
        ),
      ),
    );
  }
}
