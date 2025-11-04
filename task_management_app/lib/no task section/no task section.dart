import 'package:flutter/material.dart';

class NoTasksView extends StatelessWidget {
  const NoTasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.task_alt, size: 60, color: Color(0xffabccc9)),
          Text(
            'No tasks yet',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          Text(
            'Add a task to get started',
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
