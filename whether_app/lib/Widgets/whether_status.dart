import 'package:flutter/material.dart';

class WhetherStatus extends StatelessWidget {
  const WhetherStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0.7,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.grey,
        title: Row(
          children: [
            Text(
              'Whether App',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Icon(Icons.search, color: Colors.white),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Egypt',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text('Whether time'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/cloud.png'),
                Text(
                  '3',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                Column(children: [Text('maxTemp: 4'), Text('minTemp: 0')]),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Heavy Cloud',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
