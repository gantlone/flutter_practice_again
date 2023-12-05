import 'package:flutter/material.dart';
import 'package:practice_again_20231021/5-4/screens/post_screen.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/r": (context) {
          return PostScreen();
        }
      },
      initialRoute: "/r",
    );
  }
}
