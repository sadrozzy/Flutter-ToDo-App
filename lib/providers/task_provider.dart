import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> tasks;

  TaskProvider({this.tasks = const []});

  void addTask(String taskTitle) async {
    tasks.insert(0, Task(title: taskTitle));
    notifyListeners();
  }

  void deleteTask(String id) async {
    tasks.removeWhere((task) => task.id == id);
    notifyListeners();
  }
}
