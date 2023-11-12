import 'package:flutter/material.dart';
import 'package:practice_again_20231021/4-2/screens/colorful_demo_screen_ez.dart';
import 'package:practice_again_20231021/4-2/screens/ex_screens.dart';
import 'package:practice_again_20231021/4-3/screens/todo_input_demo_screnn.dart';

void main() {
  runApp(Main());
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
        title: 'statefulwidget demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        // initialRoute: "/color-demo",
        // routes: {
        //   '/color-demo': (BuildContext context) {
        //     return ColorfulDemoScreen();
        //   }
        // });
        initialRoute: "/color-demo",
        routes: {
          '/color-demo': (BuildContext context) {
            return TodoInputDemoScrenn();
          }
        });
  }
}
