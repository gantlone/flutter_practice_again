import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-8/screens/example_screen_1.dart';
import 'package:practice_again_20231021/3-8/screens/example_screen_2.dart';
import 'package:practice_again_20231021/3-8/screens/home_screen_1.dart';
import 'package:practice_again_20231021/3-8/screens/second_screen_1.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (BuildContext context) => ExampleScreen1(),
        "/second": (BuildContext context) {
          return ExampleScreen2();
        },
      },
      initialRoute: "/",
    );
  }
}
