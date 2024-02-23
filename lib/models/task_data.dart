import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  int get taskCount => tasks.length;

  void addTask(String newTaskTitle) {
    final newTask = Task(name: newTaskTitle);
    tasks.add(newTask);
    notifyListeners();
  }
}
