import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({
    @required this.textController,
    this.onButtonPressed
  });

  final TextEditingController textController;
  final Function onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 48),
        margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Add Task",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 34
              ),
            ),
            TextField(
              controller: textController,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 2
                  )
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 2
                  )
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 2
                  )
                )
              ),
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24,),
            RaisedButton(
              onPressed: onButtonPressed,
              child: Container(
                width: double.infinity,
                height: 43,
                alignment: Alignment.center,
                child: Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}