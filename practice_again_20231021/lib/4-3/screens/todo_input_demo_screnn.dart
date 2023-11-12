import 'package:flutter/material.dart';

class TodoInputDemoScrenn extends StatefulWidget {
  TodoInputDemoScrenn({Key? key}) : super(key: key);

  List<String> todoList = [];

  @override
  _TodoInputDemoScrennState createState() => _TodoInputDemoScrennState();
}

class _TodoInputDemoScrennState extends State<TodoInputDemoScrenn> {
  @override
  Widget build(BuildContext context) {
    var textEditController = TextEditingController();

    Widget userInputTextField = Container(
      width: 500,
      child: TextField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), hintText: '輸入要執行的任務'),
        controller: textEditController,
        onSubmitted: (value) {
          setState(() {
            this.widget.todoList.clear();
            this.widget.todoList.add(value);
            textEditController.clear();
          });
        },
      ),
    );

    return Scaffold(
        body: Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          userInputTextField,
          ...this.widget.todoList.map((value) => Text(value))
        ],
      ),
    ));
  }
}
