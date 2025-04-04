import 'package:flutter/material.dart';

class CreateTaskForm extends StatefulWidget {
  final Function(String) onTaskAdded;
  const CreateTaskForm({super.key, required this.onTaskAdded});

  @override
  CreateTaskFormState createState() {
    return CreateTaskFormState();
  }
}

class CreateTaskFormState extends State<CreateTaskForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _taskController = TextEditingController();

  @override
  void dispose() {
    _taskController.dispose();
    super.dispose();
  }

  void _submitTask() {
    if (_formKey.currentState!.validate()) {
      String taskTitle = _taskController.text;

      widget.onTaskAdded(taskTitle);
      _taskController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextFormField(
              controller: _taskController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Can't be empty";
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: 'Enter a task',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(),
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          IconButton.filled(
            icon: Icon(Icons.add, size: 30),
            onPressed: () {
              _submitTask();
            },
          ),
        ],
      ),
    );
  }
}
