import 'package:flutter/material.dart';
import 'package:practice_again_20231021/4-4/components/common_drawer.dart';
import 'package:practice_again_20231021/4-4/components/todo_component.dart';
import 'package:practice_again_20231021/4-4/viewmodels/todo_dao.dart';
import 'package:provider/provider.dart';

class TodoInputDemoScreen extends StatefulWidget {
  List<String> todoList = [];

  @override
  State createState() => _TodoInputDemoScreen();
}

class _TodoInputDemoScreen extends State<TodoInputDemoScreen> {
  @override
  Widget build(BuildContext context) {
    //用來存取輸入字串
    var textEditController = TextEditingController();

    Widget userInputTextField = Container(
      width: 500,
      child: TextField(
        decoration:
            InputDecoration(border: OutlineInputBorder(), hintText: '輸入要執行的任務'),
        controller: textEditController,
        onSubmitted: (inputValue) {
          //當用戶點擊時，傳入先前輸入的字，透過總頁面的context去讀取provider中的TodoDao
          setState(() {
            context.read<TodoDao>().insertTodo(inputValue);
            textEditController.clear();
          });
        },
      ),
    );

    return Scaffold(
        appBar: AppBar(),
        drawer: CommonDrawer.getDrawer(context),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              userInputTextField,
              // 三個點是可以將provider回傳的內容轉換成List<Container>
              ...context
                  .watch<TodoDao>()
                  .getTodos()
                  .map(
                    (e) => Container(
                      child: TodoComponent(e),
                    ),
                  )
                  .toList()
            ],
          ),
        ));
  }
}
