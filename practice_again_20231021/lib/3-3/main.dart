import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-3/screens/home_screen.dart';

void main() {
  return runApp(AppEntryPoint());
}

class AppEntryPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen(),
        theme: ThemeData.dark(),
        darkTheme: ThemeData.dark());
  }
}
