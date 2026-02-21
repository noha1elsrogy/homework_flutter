import 'package:flutter/material.dart';
import 'package:task_app/List%20view/Card%20List%20view.dart';
import 'package:task_app/models/task_manager.dart';

class ListTasks extends StatefulWidget {
  final VoidCallback allTasksRemoved;
  final TaskManager taskManager;
  ListTasks({
    super.key,
    required this.taskManager,
    required this.allTasksRemoved,
  });

  @override
  State<ListTasks> createState() => _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (var task in widget.taskManager.getTasks())
          CardListView(
            task: task,
            taskManager: widget.taskManager,
            onDelete: () {
              if (widget.taskManager.getTasks().isEmpty) {
                widget.allTasksRemoved();
              } else {
                setState(() {});
              }
            },
          ),
      ],
    );
  }
}
