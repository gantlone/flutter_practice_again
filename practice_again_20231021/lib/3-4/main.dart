import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-4/screens/example_1.dart';
import 'package:practice_again_20231021/3-4/screens/example_2.dart';
import 'package:practice_again_20231021/3-4/screens/example_3.dart';
import 'package:practice_again_20231021/3-4/screens/home_screen_1.dart';
import 'package:practice_again_20231021/3-4/screens/home_screen_2.dart';
import 'package:practice_again_20231021/3-4/screens/home_screen_3.dart';

void main() {
  return runApp(AppEntryPoint());
}

class AppEntryPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return MaterialApp(home: HomeScreen1());
    //return MaterialApp(home: HomeScreen2());
    //return MaterialApp(home: HomeScreen3());
    // return MaterialApp(home: Example1());
    // return MaterialApp(home: Example2());
    return MaterialApp(home: Example3());
  }
}
