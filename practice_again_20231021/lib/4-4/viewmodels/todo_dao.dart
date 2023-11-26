import 'package:flutter/material.dart';
import 'package:practice_again_20231021/4-4/models/todo.dart';

class TodoDao extends ChangeNotifier {
  List<Todo> todoList = [];

  // 取得當前Todo中所有方法
  List<Todo> getTodos() {
    return todoList;
  }

  // 新增Todo
  void insertTodo(String inputContent) {
    todoList.add(Todo(false, inputContent));
  }

  // 更新Todo，在todoList找是否有該index，有的話更新
  void updateTodo(Todo todo) {
    // 根據indexOf(x)找出x在第幾個index，找不到的話回傳-1
    todoList[todoList.indexOf(todo)] = todo;
    notifyListeners();
  }
}
