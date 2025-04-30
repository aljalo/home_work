import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/constant.dart';
import 'package:task_app/cubit/tasks_cubit.dart';
import 'package:task_app/models/task_model.dart';

class TaskListview extends StatelessWidget {
  const TaskListview({super.key, required this.tasks});

  final List<TaskModel> tasks;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: Checkbox(
              value: task.isCompleted,
              onChanged: (_) {
                BlocProvider.of<TasksCubit>(context).completeTask(task);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              fillColor: WidgetStateProperty.resolveWith<Color>((states) {
                if (states.contains(WidgetState.selected)) {
                  return const Color.fromARGB(255, 5, 157, 129);
                }
                return backgroundColor;
              }),
            ),
            title: Text(task.title),
            subtitle: Text(
              'Created: ${_formatDate(task.createdAt)}',
              style: TextStyle(
                fontSize: 12,
                color: colorScheme.onSurface.withOpacity(0.6),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                BlocProvider.of<TasksCubit>(context).removeTask(task);
              },
              icon: Icon(Icons.delete_outline),
              color: Colors.red.withOpacity(0.7),
            ),
          ),
        );
      },
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
