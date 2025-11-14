import 'package:flutter/material.dart';

class CardOptionItem extends StatelessWidget {
  final String titleOptionsList;
  final String valueRadio;

  const CardOptionItem({
    super.key,
    required this.titleOptionsList,
    required this.valueRadio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white, // لون ثابت
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/empty_Iconnn.png', // صورة فاضية فقط
            width: 24,
            height: 24,
          ),
          SizedBox(width: 16),
          Expanded(child: Text(titleOptionsList)),
        ],
      ),
    );
  }
}
