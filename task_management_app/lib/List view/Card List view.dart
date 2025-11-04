import 'package:flutter/material.dart';
import 'package:task_management_app/models/Task%20App%20oop.dart';

class CardListView extends StatefulWidget {
  final Task task;
  final TaskManager taskManager;
  final VoidCallback onDelete;
  const CardListView({
    super.key,
    required this.task,
    required this.taskManager,
    required this.onDelete,
  });

  @override
  State<CardListView> createState() => _CardListViewState();
}

class _CardListViewState extends State<CardListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            Checkbox(
              value: widget.task.isCompleted,
              onChanged: (value) {
                widget.taskManager.update(widget.task, value!);
                setState(() {});
              },
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.task.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.task.dateTime.toString(),
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                widget.taskManager.remove(widget.task);
                widget.onDelete();
              },
            ),
          ],
        ),
      ),
    );
  }
}
