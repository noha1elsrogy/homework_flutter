import 'package:hive_ce/hive.dart';
import 'package:task_app/constants.dart';
import 'package:task_app/models/task_model.dart';

class TaskManager {
  List<Task> tasksList = [];
  final Box<Task> _taskBox = Hive.box<Task>(kBox);
  void addTask({required Task task}) {
    _taskBox.add(task);
  }

  void remove(int key) {
    _taskBox.delete(key);
  }

  void update(Task task, bool isCompleted) {
    task.isCompleted = isCompleted;
  }

  List<int> getKeys() {
    return _taskBox.keys.cast<int>().toList();
  }

  List<Task> getTasks() {
    return _taskBox.values.toList();
  }
}
