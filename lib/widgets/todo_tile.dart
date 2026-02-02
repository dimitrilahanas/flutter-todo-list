import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_todo_list/model/task.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked;
  Task task;
  final void Function(bool?)? onCheckboxChanged;
  final void Function() onDeletePressed;

  TodoTile({super.key, required this.isChecked, required this.task, this.onCheckboxChanged, required this.onDeletePressed});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              onPressed: (context) { 
                onDeletePressed();
              },
              icon: Icons.delete,
            ),
          ],
        ),
        child: Container(
          height: screenHeight * 0.08,
          color: Theme.of(context).colorScheme.onPrimary,

          child: Row(
            children: [
              Checkbox(value: isChecked, onChanged: onCheckboxChanged),

              Text(
                task.name,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
