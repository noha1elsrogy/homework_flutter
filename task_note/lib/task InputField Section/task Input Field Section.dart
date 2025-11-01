import 'package:flutter/material.dart';
import 'package:task_note/task%20InputField%20Section/Icon%20Add%20Task.dart';
import 'package:task_note/task%20InputField%20Section/Text%20Field%20Item.dart';

class taskInputFieldSection extends StatefulWidget {
  const taskInputFieldSection({super.key});

  @override
  State<taskInputFieldSection> createState() => _taskInputFieldSectionState();
}

class _taskInputFieldSectionState extends State<taskInputFieldSection> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Colors.white,
      shadowColor: Colors.white,
      child: Row(children: [TextFieldItem(), IconAddTask()]),
    );
  }
}
