import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.amber,
            child: Text(
              "羅成員嫖妓不付錢",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: Text(
              "羅成員嫖妓不付錢",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow,
            child: Text(
              "羅成員嫖妓不付錢",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ],
    ));
  }
}
