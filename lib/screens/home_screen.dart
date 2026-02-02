import 'package:flutter/material.dart';
import 'package:flutter_todo_list/model/task.dart';
import 'package:flutter_todo_list/services/database_service.dart';
import 'package:flutter_todo_list/widgets/creation_form.dart';
import 'package:flutter_todo_list/widgets/todo_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To Do",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      body: TodoList(
        onRefresh: () {
          setState(() {});
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return CreationForm(
                controller: nameController,
                onPressed: () async {
                  await DatabaseService.addTask(
                    Task(id: null, name: nameController.text, isChecked: false),
                  );
                  nameController.clear();
                  setState(() {});
                  Navigator.pop(context);
                },
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
