import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-6/screens/Second_screen_1.dart';
import 'package:practice_again_20231021/3-6/screens/example_1.dart';
import 'package:practice_again_20231021/3-6/screens/example_2.dart';
import 'package:practice_again_20231021/3-6/screens/home_screen_1.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // "/": (BuildContext context) => HomeScreen1(),
        // "/second": (BuildContext context) => SecondScreen1(),
        // "/second/next": (BuildContext context) => HomeScreen1(),
        "/first": (BuildContext context) => Example1(),
        "/second": (BuildContext context) => Example2()
      },
      initialRoute: "/second",
    );
  }
}
