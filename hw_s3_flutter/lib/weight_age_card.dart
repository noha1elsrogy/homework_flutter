import 'package:flutter/material.dart';

class HeightWeightCard extends StatelessWidget {
  final String attribute;
  final String attributeNumber;
  const HeightWeightCard({
    super.key,
    required this.attribute,
    required this.attributeNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff16162e),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              attribute,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          Text(
            attributeNumber,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // primary: Colors.grey,
                      shape: CircleBorder(),
                      minimumSize: Size(50, 50)),
                  onPressed: () {},
                  child: Center(
                    child: Icon(
                      Icons.remove,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), minimumSize: Size(50, 50)),
                  onPressed: () {},
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
