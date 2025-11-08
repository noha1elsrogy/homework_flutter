import 'package:flutter/material.dart';
import 'package:quiz_application/styles/Text_styles_app.dart';

class OptionsSection extends StatelessWidget {
  String? chooseAnswer = 'option';

  OptionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: RadioListTile(
            title: Text('optionnnn', style: TextStylesApp.h2Style()),
            value: '',
            groupValue: chooseAnswer,
            activeColor: Colors.transparent, //خفيت الدايره
            fillColor: MaterialStateProperty.all(
              Colors.transparent,
            ), //خفيت الدايره
            secondary: chooseAnswer == ''
                ? Image.asset(
                    'assets/images/Icon_mark.png', // علامة الصح
                    width: 24,
                    height: 24,
                  )
                : Image.asset(
                    'assets/images/empty_Iconnn.png', // صورة فاضية
                    width: 24,
                    height: 24,
                  ),
            controlAffinity: ListTileControlAffinity.trailing,
            onChanged: (value) {},
          ),
        ),
        SizedBox(height: 10),

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: RadioListTile(
            title: Text('optionnnn', style: TextStylesApp.h2Style()),
            value: '',
            groupValue: chooseAnswer,
            activeColor: Colors.transparent, //خفيت الدايره
            fillColor: MaterialStateProperty.all(
              Colors.transparent,
            ), //خفيت الدايره
            secondary: chooseAnswer == ''
                ? Image.asset(
                    'assets/images/Icon_mark.png', // علامة الصح
                    width: 24,
                    height: 24,
                  )
                : Image.asset(
                    'assets/images/empty_Iconnn.png', // صورة فاضية
                    width: 24,
                    height: 24,
                  ),
            controlAffinity: ListTileControlAffinity.trailing,
            onChanged: (value) {},
          ),
        ),
        SizedBox(height: 10),

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: RadioListTile(
            title: Text('optionnnn', style: TextStylesApp.h2Style()),
            value: '',
            groupValue: chooseAnswer,
            activeColor: Colors.transparent, //خفيت الدايره
            fillColor: MaterialStateProperty.all(
              Colors.transparent,
            ), //خفيت الدايره
            secondary: chooseAnswer == ''
                ? Image.asset(
                    'assets/images/Icon_mark.png', // علامة الصح
                    width: 24,
                    height: 24,
                  )
                : Image.asset(
                    'assets/images/empty_Iconnn.png', // صورة فاضية
                    width: 24,
                    height: 24,
                  ),
            controlAffinity: ListTileControlAffinity.trailing,
            onChanged: (value) {},
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: RadioListTile(
            title: Text('optionnnn', style: TextStylesApp.h2Style()),
            value: '',
            groupValue: chooseAnswer,
            activeColor: Colors.transparent, //خفيت الدايره
            fillColor: MaterialStateProperty.all(
              Colors.transparent,
            ), //خفيت الدايره
            secondary: chooseAnswer == ''
                ? Image.asset(
                    'assets/images/Icon_mark.png', // علامة الصح
                    width: 24,
                    height: 24,
                  )
                : Image.asset(
                    'assets/images/empty_Iconnn.png', // صورة فاضية
                    width: 24,
                    height: 24,
                  ),
            controlAffinity: ListTileControlAffinity.trailing,
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
