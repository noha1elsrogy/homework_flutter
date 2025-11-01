import 'package:flutter/material.dart';

class ContainerBlue extends StatelessWidget {
  const ContainerBlue({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        color: Color(0xffe3f2fc),
        height: 200,
        width: 400,
      ),
    );
  }
}

class ContainerGray extends StatelessWidget {
  const ContainerGray({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Container(
          color: Color(0xffe0e0e0),
          height: 30,
          width: 30,
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          color: Color(0xffe0e0e0),
          height: 30,
          width: 270,
        ),
      ],
    );
  }
}

class ContainerGreenAndYellow extends StatelessWidget {
  const ContainerGreenAndYellow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                color: Color(0xffa5d6a7),
                height: 40,
                width: 160,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                color: Color(0xffa5d6a7),
                height: 40,
                width: 160,
              ),
            )
          ],
        ),
        SizedBox(width: 10),
        Container(
          color: Colors.yellow,
          height: 90,
          width: 70,
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          color: Colors.yellow,
          height: 90,
          width: 70,
        ),
      ],
    );
  }
}

class ContainerPurple extends StatelessWidget {
  const ContainerPurple({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            color: Color(0xffe1bee8),
            height: 90,
            width: 80,
          ),
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Container(
              color: Color(0xffce93d9),
              height: 40,
              width: 80,
            ),
            Container(
              color: Color.fromARGB(255, 140, 47, 158),
              height: 10,
            ),
            Container(
              color: Color(0xffce93d9),
              height: 40,
              width: 80,
            ),
          ],
        ),
        SizedBox(width: 5),
        Container(
          color: Color(0xffe1bee8),
          height: 90,
          width: 80,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            color: Color(0xfff2e4f5),
            height: 90,
            width: 70,
          ),
        ),
      ],
    );
  }
}

class ContainerGreen extends StatelessWidget {
  const ContainerGreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            color: Color(0xffb2dfdc),
            height: 50,
            width: 157,
          ),
        ),
        SizedBox(width: 10),
        Container(
          color: Color(0xff81ccc4),
          height: 50,
          width: 157,
        ),
      ],
    );
  }
}

class ContainerGrey2 extends StatelessWidget {
  const ContainerGrey2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 50,
      width: 326,
    );
  }
}
