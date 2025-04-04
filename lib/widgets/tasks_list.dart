import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/task_item.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({super.key, required this.tasks});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  void _toggleTaskCompletion(int index) {
    setState(() {
      widget.tasks[index].toggleDone();
    });
  }

  void _deleteTask(int index) {
    setState(() {
      widget.tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: ListView.builder(
          itemCount: widget.tasks.length,
          itemBuilder: (context, index) {
            return TaskItem(
              key: ValueKey(widget.tasks[index].id),
              task: widget.tasks[index],
              onToggle: () => _toggleTaskCompletion(index),
              onDelete: () => _deleteTask(index),
            );
          },
        ),
      ),
    );
  }
}
