import 'package:flutter/material.dart';
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

      body: const TodoList(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return CreationForm(controller: nameController, onPressed: () {});
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
