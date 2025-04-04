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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CheckButton(isChecked: task.isDone, onChanged: (_) => onToggle()),
              SizedBox(width: 8),
              Text(
                task.title,
                style: TextStyle(
                  fontSize: 16,
                  decoration:
                      task.isDone
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                ),
              ),
            ],
          ),
          DeleteButton(onChanged: (_) => onDelete()),
        ],
      ),
    );
  }
}
