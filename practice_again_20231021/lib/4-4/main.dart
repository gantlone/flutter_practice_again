import 'package:flutter/material.dart';
import 'package:practice_again_20231021/4-4/components/todo_component.dart';
import 'package:practice_again_20231021/4-4/models/todo.dart';
import 'package:practice_again_20231021/4-4/viewmodels/todo_dao.dart';
import 'package:practice_again_20231021/4-4/views/colorful_demo_screen.dart';
import 'package:practice_again_20231021/4-4/views/count_todo_demo_screen.dart';
import 'package:practice_again_20231021/4-4/views/todo_input_demo.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => TodoDao())],
    child: Main(),
  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/task': (BuildContext context) => TodoInputDemoScreen(),
        '/amount': (BuildContext context) => CountTodoDemoScreen(),
        '/color-demo': (BuildContext context) => ExScreens(),
      },
      title: '柔成員provider練習',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/task',
    );
  }
}
