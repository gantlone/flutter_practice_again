import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-5/screens/example_1.dart';
import 'package:practice_again_20231021/3-5/screens/home_screen_1.dart';
import 'package:practice_again_20231021/3-5/screens/home_screen_2.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(home: HomeScreen1());
    // return MaterialApp(home: HomeScreen2());
    return MaterialApp(home: Example1());
  }
}
