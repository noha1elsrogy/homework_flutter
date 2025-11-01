import 'package:flutter/material.dart';

class Feutures extends StatelessWidget {
  const Feutures({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomFeuturesContainer(
            icon: Icon(Icons.ac_unit_outlined),
            colorContainer: Color(0xfff1ebf7),
            text1: 'Fast Performance',
            text2: 'Lightning fast app performance'),
        SizedBox(
          height: 10,
        ),
        CustomFeuturesContainer(
            icon: Icon(Icons.security),
            colorContainer: Color(0xffe8f3fc),
            text1: 'Secure',
            text2: 'Your data is safe with us'),
        SizedBox(
          height: 10,
        ),
        CustomFeuturesContainer(
            icon: Icon(Icons.color_lens),
            colorContainer: Color(0xfffff5e8),
            text1: 'Beautiful UI',
            text2: 'Modern and clean design')
      ],
    );
  }
}

class CustomFeuturesContainer extends StatelessWidget {
  final Icon icon;
  final Color colorContainer;
  final String text1;
  final String text2;

  const CustomFeuturesContainer({
    super.key,
    required this.icon,
    required this.colorContainer,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      // width: 400,
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
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: icon,
              decoration: BoxDecoration(
                  color: colorContainer,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    text2,
                    style: TextStyle(fontWeight: FontWeight.w100, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 57,
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
              size: 15,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
