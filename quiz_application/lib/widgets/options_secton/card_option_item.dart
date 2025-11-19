import 'package:flutter/material.dart';

class CardOptionItem extends StatefulWidget {
  final String titleOptionsList;

  final bool isSelected;
  final VoidCallback onChanged;

  const CardOptionItem({
    super.key,
    required this.titleOptionsList,

    required this.isSelected,
    required this.onChanged,
  });

  @override
  State<CardOptionItem> createState() => _CardOptionItemState();
}

class _CardOptionItemState extends State<CardOptionItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onChanged,
      child: widget.isSelected
          ? SelectedCard(titleOptionsList: widget.titleOptionsList)
          : NotSelectedCard(titleOptionsList: widget.titleOptionsList),
    );

    // ):Container(
    //   padding: const EdgeInsets.all(12),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(12),
    //     color: Colors.white, // لون ثابت
    //   ),
    //   child: Row(
    //     children: [
    //       Image.asset(
    //         'assets/images/empty_Iconnn.png', // صورة فاضية فقط
    //         width: 24,
    //         height: 24,
    //       ),

    //       SizedBox(width: 16),
    //       Expanded(child: Text(titleOptionsList)),
    //     ],
    //   ),
    // );
  }
}

class SelectedCard extends StatelessWidget {
  const SelectedCard({super.key, required this.titleOptionsList});

  final String titleOptionsList;

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
            'assets/images/Icon_mark.png', // صورة فاضية فقط
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

class NotSelectedCard extends StatelessWidget {
  const NotSelectedCard({super.key, required this.titleOptionsList});

  final String titleOptionsList;

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
