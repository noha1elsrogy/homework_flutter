import 'package:flutter/material.dart';
import 'package:task_note/no%20task%20section/no%20task%20section.dart';
import 'package:task_note/task%20InputField%20Section/task%20Input%20Field%20Section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5faf8),
      appBar: AppBar(
        backgroundColor: Color(0xff9df2e3),
        title: const Text(
          'My Tasks',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          NoTasksView(),
          Spacer(),
          taskInputFieldSection(),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [taskInputFieldSection()],
          // ),
        ],
      ),
    );
  }
}
