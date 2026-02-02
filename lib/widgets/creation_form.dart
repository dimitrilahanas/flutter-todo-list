import 'package:flutter/material.dart';

class CreationForm extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onPressed;
  const CreationForm({super.key, required this.controller, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "Add task",
            style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      content: TextField(controller: controller),
      actions: [
        Center(
          child: TextButton(onPressed: onPressed, child: Text("Save")),
        ),
      ],
    );
  }
}
