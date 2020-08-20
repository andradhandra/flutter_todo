import 'package:flutter/material.dart';
import 'package:flutter_todo/models/TaskModel.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    @required this.task,
    @required this.onChanged
  });

  final TaskModel task;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      onChanged: onChanged, 
      value: task.isDone,
      title: Text(
        task.name,
        style: TextStyle(
          decoration: task.isDone ? TextDecoration.lineThrough : null
        ),
      ),
    );
  }
}