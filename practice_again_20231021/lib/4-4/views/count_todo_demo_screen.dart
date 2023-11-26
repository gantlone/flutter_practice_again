import 'package:flutter/material.dart';
import 'package:practice_again_20231021/4-4/components/common_drawer.dart';
import 'package:practice_again_20231021/4-4/viewmodels/todo_dao.dart';
import 'package:provider/provider.dart';

class CountTodoDemoScreen extends StatelessWidget {
  const CountTodoDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: CommonDrawer.getDrawer(context),
      body: Container(
        child: Text('目前TODO數量為 ' +
            context.read<TodoDao>().getTodos().length.toString()),
      ),
    );
  }
}
