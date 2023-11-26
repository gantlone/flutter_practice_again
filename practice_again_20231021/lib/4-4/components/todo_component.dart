import 'package:flutter/material.dart';

import '../models/todo.dart';

class TodoComponent extends StatefulWidget {
  Todo todo;

  TodoComponent(this.todo, {super.key});

  @override
  _TodoComponentState createState() => _TodoComponentState();
}

class _TodoComponentState extends State<TodoComponent> {
  @override
  Widget build(BuildContext context) {
    Widget checkTaskCompleteBox = Container(
      child: Checkbox(
        value: this.widget.todo.isComplete,
        onChanged: (userCheck) {
          setState(() {
            this.widget.todo.isComplete = userCheck!;
          });
        },
      ),
    );

    Widget taskText = Container(
      child: Text(
        this.widget.todo.content,
        style: this.widget.todo.isComplete == true
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : TextStyle(),
      ),
    );

    return Container(
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [checkTaskCompleteBox, taskText],
      ),
    );
  }
}
