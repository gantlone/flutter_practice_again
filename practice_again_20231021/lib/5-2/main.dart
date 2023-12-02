import 'package:flutter/material.dart';
import 'package:practice_again_20231021/5-2/screens/exFutureBuilder.dart';
import 'package:practice_again_20231021/5-2/screens/future_builder_demo_screen.dart';

void main() {
  return runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/remote-data": (context) {
          return FutureBuilderDemoScreen();
        },
        "/ex": (context) => ExFutureBuilder()
      },
      initialRoute: "/ex",
    );
  }
}
