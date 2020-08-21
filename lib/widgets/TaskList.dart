import 'package:flutter/material.dart';
import 'package:flutter_todo/models/TaskModel.dart';
// import 'package:flutter_todo/widgets/TaskTile.dart';

class TaskList extends StatelessWidget {
  TaskList({
    @required this.tasks,
    @required this.builder
  });
  
  final List<TaskModel> tasks;
  final Function builder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(24),
      itemCount: tasks.length,
      itemBuilder: builder,
    );
  }
}