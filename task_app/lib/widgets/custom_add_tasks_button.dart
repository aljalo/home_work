import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/constant.dart';
import 'package:task_app/cubit/tasks_cubit.dart';

class CustomAddTasksButton extends StatefulWidget {
  const CustomAddTasksButton({super.key});

  @override
  State<CustomAddTasksButton> createState() => _CustomAddTasksButtonState();
}

class _CustomAddTasksButtonState extends State<CustomAddTasksButton> {
  
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        boxShadow: [BoxShadow(color: Colors.black, offset: Offset(0, -1))],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Add new task',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: textfieldColor,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
              ),
              onChanged: (text) {
                this.text = text;
              },
            ),
          ),
          SizedBox(width: 8),
          AnimatedContainer(
            duration: Duration(microseconds: 200),
            curve: Curves.easeInOut,
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: addButtonColor,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {
                BlocProvider.of<TasksCubit>(context).addTask(text);
              },
              icon: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
