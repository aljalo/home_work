import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_app/constant.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.task_alt,
            size: 80,
            color: seconderyColor.withOpacity(0.3),
          ),
          SizedBox(height: 16),
          Text(
            'No tasks',
            style: TextStyle(
              fontSize: 18,
              color: seconderyColor.withOpacity(0.6),
            ),
          ),
          Text(
            'Add task to get started',
            style: TextStyle(
              fontSize: 18,
              color: seconderyColor.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
