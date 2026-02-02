import 'package:flutter/material.dart';
import 'package:flutter_todo_list/widgets/creation_form.dart';
import 'package:flutter_todo_list/widgets/todo_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  final nameController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do", style: TextStyle(fontWeight: FontWeight.bold)),
      ),

      body: TodoList(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return CreationForm(controller: );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
