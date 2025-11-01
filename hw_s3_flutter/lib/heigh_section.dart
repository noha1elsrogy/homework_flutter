import 'package:flutter/material.dart';

class HeightItem extends StatefulWidget {
  const HeightItem({super.key});

  @override
  State<HeightItem> createState() => _HeightItemState();
}

class _HeightItemState extends State<HeightItem> {
  double slider = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Color(0xff16162e),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HEIGHT',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w100,
                  fontSize: 25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '174',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'cm',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 10),
                  ),
                ),
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                  trackHeight: 2,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16)),
              child: Slider(
                value: slider,
                thumbColor: Color(0xffed0c53),
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    slider = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
