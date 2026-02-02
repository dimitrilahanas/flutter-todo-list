import 'package:flutter/material.dart';
import 'package:flutter_todo_list/model/task.dart';
import 'package:flutter_todo_list/services/database_service.dart';
import 'package:flutter_todo_list/widgets/todo_tile.dart';

class TodoList extends StatelessWidget {
  final VoidCallback onRefresh;
  const TodoList({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: FutureBuilder<List<Task>?>(
        future: DatabaseService.getAllTasks(),
        builder: (context, AsyncSnapshot<List<Task>?> snapshot) {
          final tasks = snapshot.data ?? [];
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return Padding(
                padding: const EdgeInsets.only(top: 30),
                child: TodoTile(
                  isChecked: task.isChecked,
                  task: task,
                  onDeletePressed: () async {
                    await DatabaseService.deleteTask(task);
                    onRefresh();
                  }, 
                ),
              );
            },
          );
        },
      ),
    );
  }
}
