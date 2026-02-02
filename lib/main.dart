import 'package:flutter/material.dart';
import 'package:flutter_todo_list/screens/home_screen.dart';
import 'package:flutter_todo_list/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: AppTheme.lightMode,
      darkTheme: AppTheme.darkMode,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}
