import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  const TextFieldItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white, width: 1),
          ),
          hintText: 'Add a new task...',
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
