import 'package:task_management_app/models/task_model.dart';

class TaskManager {
  List<Task> tasksList = [];

  void addTask({required Task task}) {
    tasksList.add(task);
  }

  void remove(Task task) {
    tasksList.remove(task);
  }

  void update(Task task, bool isCompleted) {
    task.isCompleted = isCompleted;
  }

  List<Task> getTasks() {
    return tasksList;
  }
}
