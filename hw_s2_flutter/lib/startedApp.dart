import 'package:flutter/material.dart';

class StartedApp extends StatelessWidget {
  const StartedApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color TextColor = Colors.white;
    return Container(
      height: 140,
      width: 320,
      decoration: BoxDecoration(
        color: Color(0xff8261ba),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      // color: Color(0xff8261ba),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hello!',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.back_hand, color: Colors.yellow),
              ],
            ),
            Text(
              'Try your best to build this ui',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              height: 40,
              width: 270,
              decoration: BoxDecoration(
                color: Color(0xff663bb8),
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              ),
              child: Center(
                  child: Text('Get Started',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }
}
