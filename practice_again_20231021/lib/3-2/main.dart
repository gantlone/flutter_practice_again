import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_again_20231021/3-2/screens/home_screen.dart';

// void main() {
//   runApp(AppEntryPoint());
// }

// class AppEntryPoint extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: HomeScreen());
//   }
// }

void main() {
  runApp(AppEntryPoint());
}

class AppEntryPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DemoScreen());
  }
}
