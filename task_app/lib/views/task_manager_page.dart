import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/constant.dart';
import 'package:task_app/cubit/tasks_cubit.dart';
import 'package:task_app/widgets/custom_add_tasks_button.dart';
import 'package:task_app/widgets/empty_list_widget.dart';
import 'package:task_app/widgets/task_listview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskManagerPage extends StatelessWidget {
  const TaskManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            'Task Manager',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: seconderyColor,
            ),
          ),
          elevation: 0,
        ),

        body: Column(
          children: [
            BlocBuilder<TasksCubit, TasksState>(
              builder: (context, state) {
                var tasks =
                    BlocProvider.of<TasksCubit>(context).taskManager.tasks;
                return Expanded(
                  child:
                      tasks.isEmpty
                          ? EmptyListWidget(color: seconderyColor)
                          : TaskListview(tasks: tasks),
                );
              },
            ),
            CustomAddTasksButton(),
          ],
        ),
      ),
    );
  }
}
