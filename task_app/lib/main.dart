import 'package:flutter/material.dart';
import 'package:task_app/views/task_manager_page.dart';

void main() {
  runApp(TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Task Manager',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.teal,
      //     brightness: Brightness.light,
      //   ),
      //   useMaterial3: true,
      //   fontFamily: 'Poppins',
      // ),
      // darkTheme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //     seedColor: Colors.teal,
      //     brightness: Brightness.dark,
      //   ),
      //   useMaterial3: true,
      //   fontFamily: 'Poppins',
      // ),
      // themeMode: ThemeMode.system,
      home: TaskManagerPage(),
    );
  }
}
