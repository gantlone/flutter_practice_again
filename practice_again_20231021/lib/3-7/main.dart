import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-7/screens/home_screen_1.dart';
import 'package:practice_again_20231021/3-7/screens/second_screen_1.dart';
import 'package:practice_again_20231021/3-7/screens/third_screen_1.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (BuildContext context) => HomeScreen1(),
        "/second": (BuildContext context) => SecondScreen1(),
        "/third": (BuildContext context) => ThirdScreen1(),
      },
      initialRoute: "/",
    );
  }
}
