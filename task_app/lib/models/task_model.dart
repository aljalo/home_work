import 'package:equatable/equatable.dart';

class TaskModel extends Equatable {
  final String title;
  final DateTime createdAt;
  bool isCompleted = false;

  TaskModel({
    required this.title,
    required this.createdAt,
    this.isCompleted = false,
  });

  @override
  List<Object?> get props => [title, createdAt];
}

class TaskManager {
  final List<TaskModel> _tasks = [];

  List<TaskModel> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(TaskModel(title: title, createdAt: DateTime.now()));
  }

  void removeTask(TaskModel task) {
    _tasks.remove(task);
  }

  void completeTake(TaskModel task) {
    task.isCompleted = true;
  }

  void uncompleteTake(TaskModel task) {
    task.isCompleted = false;
  }
}
