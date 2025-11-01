class Task {
  String title;
  DateTime dateTime;
  Task({required this.title, required this.dateTime});
}

class ManageTasks {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
  }

  void updateTask(int index, Task newTask) {
    if (index >= 0 && index < tasks.length) {
      tasks[index] = newTask;
    } else {
      print('Invalid index');
    }
  }

  void clearTasks() {
    tasks.clear();
  }

  void displayTasks() {
    for (var task in tasks) {
      print(task);
    }
  }
}
