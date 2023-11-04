import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(20),
          color: Colors.blue,
          child: Container(
              margin: EdgeInsets.all(20),
              color: Colors.green,
              child: Container(
                margin: EdgeInsets.all(20),
                color: Colors.red,
              ))),
    );
  }
}
