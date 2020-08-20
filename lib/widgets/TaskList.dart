import 'package:flutter/material.dart';
import 'package:flutter_todo/models/TaskModel.dart';
import 'package:flutter_todo/widgets/TaskTile.dart';

class TaskList extends StatefulWidget {
  TaskList({
    @required this.tasks
  });
  
  final List<TaskModel> tasks;

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(24),
      itemCount: widget.tasks.length,
      itemBuilder: (context, i) => 
        TaskTile(
          task: widget.tasks[i],
          onChanged: (_) => setState(
            widget.tasks[i].toggleDone
          ),  
        ),
    );
  }
}