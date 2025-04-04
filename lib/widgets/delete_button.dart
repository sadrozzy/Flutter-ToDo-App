import 'package:flutter/material.dart';

class DeleteButton extends StatefulWidget {
  final ValueChanged<bool>? onChanged;

  const DeleteButton({super.key, this.onChanged});

  @override
  State<DeleteButton> createState() => _DeleteButton();
}

class _DeleteButton extends State<DeleteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () {
        widget.onChanged?.call(true);
      },
      color: Colors.red,
      tooltip: 'Delete Task',
    );
  }
}
