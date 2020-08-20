import 'package:flutter/material.dart';
import 'package:flutter_todo/models/TaskModel.dart';
import 'package:flutter_todo/screens/AddTaskScreen.dart';
import 'package:flutter_todo/widgets/TaskList.dart';

class TasksScreen extends StatelessWidget {
  final _addTaskInputFieldController = TextEditingController();
  final List<TaskModel> _tasks = [
    TaskModel(name: "Beli susu"),
    TaskModel(name: "Beli madu"),
    TaskModel(name: "Beli racun")
  ];

  @override
  Widget build(BuildContext context) {
    // void _addTask () {}
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30,  
                      color: Colors.lightBlueAccent,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Todoey",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  Text(
                    "12 Tasks",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20)
                  )
                ),
                child: TaskList(tasks: _tasks),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20) 
            )
          ),
          isScrollControlled: true,
          builder: (context) => AddTaskScreen(
            textController: _addTaskInputFieldController,
            onButtonPressed: null,
          )
        ),
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}

