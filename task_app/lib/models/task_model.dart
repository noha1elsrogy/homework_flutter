import 'package:equatable/equatable.dart';
import 'package:hive_ce/hive.dart';
part 'task_model.g.dart';

@HiveType(typeId: 1)
class Task extends HiveObject with EquatableMixin {
  @HiveField(0)
  String title;

  @HiveField(1)
  DateTime dateTime;

  @HiveField(2)
  bool isCompleted;

  Task({required this.title, required this.dateTime, this.isCompleted = false});

  @override
  List<Object?> get props => [title, dateTime, isCompleted];
}
