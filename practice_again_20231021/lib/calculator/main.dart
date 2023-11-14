import 'package:flutter/material.dart';
import 'package:practice_again_20231021/calculator/screens/calculator.dart';

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
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    // print(screenWidth);
    // print(screenHeight);
    return MaterialApp(home: Scaffold(body: Calculator()));
    // return MaterialApp(home: Scaffold(body: calc()));
  }
}
