import 'package:flutter/material.dart';
import 'package:task_app/models/task_manager.dart';
import 'package:task_app/models/task_model.dart';

class taskInputFieldSection extends StatefulWidget {
  TaskManager taskManager;
  VoidCallback onChanged;
  taskInputFieldSection({
    super.key,
    required this.taskManager,
    required this.onChanged,
  });

  @override
  State<taskInputFieldSection> createState() => _taskInputFieldSectionState();
}

class _taskInputFieldSectionState extends State<taskInputFieldSection> {
  TextEditingController _controller = TextEditingController();
  String taskTitle = '';
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Colors.white,
      shadowColor: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              onChanged: (value) {
                taskTitle = value;
              },
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
          ),

          GestureDetector(
            onTap: () {
              Task task = Task(
                title: taskTitle,
                dateTime: DateTime.now(),
                isCompleted: false,
              );
              widget.taskManager.addTask(task: task);
              _controller.clear();

              widget.onChanged();
              // setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffdce3e1),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add, color: Color(0xff939997), size: 35),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
