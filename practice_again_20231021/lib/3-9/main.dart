import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-9/screens/aws_screen.dart';
import 'package:practice_again_20231021/3-9/screens/book_screen.dart';
import 'package:practice_again_20231021/3-9/screens/home_screen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (BuildContext context) {
          return HomeScreen();
        },
        "/cloud-guide": (BuildContext context) {
          return BookScreen();
        },
        "/future-class": (BuildContext context) {
          return AwsScreen();
        },
      },
      initialRoute: "/",
    );
  }
}
