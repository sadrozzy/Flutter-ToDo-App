import 'package:flutter/material.dart';

class CheckButton extends StatefulWidget {
  final ValueChanged<bool>? onChanged;
  final bool isChecked;

  const CheckButton({super.key, required this.isChecked, this.onChanged});

  @override
  State<CheckButton> createState() => _CheckButton();
}

class _CheckButton extends State<CheckButton> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      value: widget.isChecked,
      onChanged: (bool? value) {
        setState(() {
          widget.onChanged!(value!);
        });
      },
    );
  }
}
