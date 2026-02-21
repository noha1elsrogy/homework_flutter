import 'package:equatable/equatable.dart';

class Task extends Equatable {
  String title;

  DateTime dateTime;

  bool isCompleted;

  Task({required this.title, required this.dateTime, this.isCompleted = false});

  @override
  List<Object?> get props => [title, dateTime, isCompleted];
}
