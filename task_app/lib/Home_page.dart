// ...existing code...
import 'package:flutter/material.dart';
import 'package:task_app/List%20view/list%20view.dart';
import 'package:task_app/models/task_manager.dart';
import 'package:task_app/no%20task%20section/no%20task%20section.dart';
import 'package:task_app/task%20InputField%20Section/task%20Input%20Field%20Section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TaskManager taskManager = TaskManager();
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
        children: [
          // The list (or no-tasks view) expands to take available space
          Expanded(
            child: taskManager.getTasks().isEmpty
                ? NoTasksView()
                : ListTasks(
                    taskManager: taskManager,
                    allTasksRemoved: () {
                      setState(() {});
                    },
                  ),
          ),

          // Input field stays fixed at the bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: taskInputFieldSection(
              taskManager: taskManager,
              onChanged: () {
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
