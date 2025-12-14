import 'package:flutter/material.dart';

class TextFieldSection extends StatelessWidget {
  String nameCounty = '';
  TextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        nameCounty = value;
      },
      decoration: InputDecoration(
        labelText:
            "Search", //ده بيظهر لما باجي اكتب وعلي البوردر...وبيظهر الكلمه دي قبل الكتابه برضو
        labelStyle: TextStyle(fontSize: 16, color: Colors.orangeAccent),

        hintText: "Enter your City", //لما باجي اكتب
        hintStyle: TextStyle(color: Colors.grey),

        // prefixIcon: Icon(Icons.person, color: Colors.blue), //Icon عالشمال قبل ماكتب
        suffixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ), //ايقون عاليمين وانا بكتب
        filled: true, // لو true، يتم تلوين خلفية الصندوق
        fillColor: Colors.white, //لون جوه
        //padding for content inside
        contentPadding: EdgeInsets.only(top: 70, left: 10),
        // شكل الإطار الأساسي للصندوق
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(0),
        //   borderSide: BorderSide(color: Colors.blue, width: 2),
        // ),
        //شكل البوردر قبل الكتابه
        enabledBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey, width: 1.7),
        ),

        //شكل البوردر بعد الكتابه
        focusedBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.orangeAccent, width: 1),
        ),
        // errorText: null, // يظهر لو فيه خطأ
        // counterText: "", // لإخفاء عداد maxLength
      ),
    );
  }
}
