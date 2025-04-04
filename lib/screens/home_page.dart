import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/create_task_form.dart';
import 'package:todo_app/widgets/tasks_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<Task> tasks = [];

  void _addTask(String taskTitle) {
    setState(() {
      tasks.insert(0, Task(title: taskTitle));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Мои задачи'), centerTitle: true),
      body: Builder(
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Column(
              children: [
                CreateTaskForm(onTaskAdded: _addTask),
                TaskList(tasks: tasks),
              ],
            ),
          );
        },
      ),
    );
  }
}
