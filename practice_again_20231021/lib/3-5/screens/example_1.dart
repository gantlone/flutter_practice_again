import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(20),
            width: 500,
            height: 500,
            color: Colors.blue,
            alignment: Alignment.bottomLeft,
            child: Example21()));
  }
}

class Example21 extends StatelessWidget {
  const Example21({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 100,
      height: 100,
      color: Colors.yellow,
    );
  }
}
