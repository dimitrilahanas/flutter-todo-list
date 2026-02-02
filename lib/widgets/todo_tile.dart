import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final void Function(bool?)? onCheckboxChanged;
  final void Function() onDeletePressed;

  const TodoTile({super.key, required this.isChecked, required this.taskName, this.onCheckboxChanged, required this.onDeletePressed});

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
              onPressed: (context) => onDeletePressed,
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
                taskName,
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
