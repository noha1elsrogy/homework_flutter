import 'dart:ui';

import 'package:equatable/equatable.dart';

class Task extends Equatable {
  String title;
  DateTime dateTime;
  bool isCompleted = false;
  Task({
    required this.title,
    required this.dateTime,
    required this.isCompleted,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [title, dateTime, isCompleted];
}

class TaskManager {
  List<Task> tasks = [];

  void addTask({required Task task}) {
    tasks.add(task);
  }

  void remove(Task task) {
    tasks.remove(task);
  }

  void update(Task task, bool isCompleted) {
    task.isCompleted = isCompleted;
  }

  List<Task> getTasks() {
    return tasks;
  }
}
