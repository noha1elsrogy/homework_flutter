import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:task_app/Home_page.dart';
import 'package:task_app/constants.dart';
import 'package:task_app/models/task_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TaskAdapter());
  await Hive.openBox<Task>(kBox); // Box<Task> وليس Box<dynamic>
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
