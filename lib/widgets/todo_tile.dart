import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  const TodoTile({super.key, required this.isChecked, required this.taskName});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.08,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Checkbox(value: isChecked, onChanged: null),

          Text(
            taskName,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              letterSpacing: 0,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
