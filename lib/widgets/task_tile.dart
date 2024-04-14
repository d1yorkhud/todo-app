import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskId;
  final String title;
  final bool isDone;
  final Function(bool?) onChanged;

  TaskTile({
    required this.taskId,
    required this.title,
    required this.isDone,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Checkbox(
        value: isDone,
        onChanged: onChanged,
      ),
    );
  }
}
