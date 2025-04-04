import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/check_button.dart';
import 'package:todo_app/widgets/delete_button.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final VoidCallback onToggle;
  final VoidCallback onDelete;

  const TaskItem({
    super.key,
    required this.task,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.title,
        style: TextStyle(
          decoration:
              task.isDone ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      leading: CheckButton(
        isChecked: task.isDone,
        onChanged: (_) => onToggle(),
      ),
      trailing: DeleteButton(onChanged: (_) => onDelete()),
    );
  }
}
