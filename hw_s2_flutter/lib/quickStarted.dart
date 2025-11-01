import 'package:flutter/material.dart';

class QuickStart extends StatelessWidget {
  const QuickStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomQuickStats(
            icon: Icon(
              Icons.people,
              color: Colors.deepPurple,
            ),
            text1: '1.234',
            text2: 'Users'),
        CustomQuickStats(
          icon: Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          text1: '4.8',
          text2: 'Rating',
        ),
        CustomQuickStats(
          icon: Icon(
            Icons.arrow_outward_rounded,
            color: Colors.blue,
          ),
          text1: '98%',
          text2: 'Success',
        ),
      ],
    );
  }
}

class CustomQuickStats extends StatelessWidget {
  final Icon icon;
  final String text1;
  final String text2;

  const CustomQuickStats(
      {super.key,
      required this.icon,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // لون الظل وشفافيته
              spreadRadius: 2, // مدى انتشار الظل
              blurRadius: 7, // مدى نعومة الظل
              offset: Offset(0, 3), // موقع الظل (x, y)
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            text1,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            text2,
            style: TextStyle(fontWeight: FontWeight.w100, fontSize: 10),
          )
        ],
      ),
    );
  }
}
