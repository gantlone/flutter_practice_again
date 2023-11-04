import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          color: Colors.yellow,
          child: Text("柔成員", style: TextStyle(fontSize: 30)),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
          color: Color.fromARGB(255, 59, 128, 255),
          child: Text("嫖妓不付錢",
              style: TextStyle(fontSize: 30, color: Colors.amber)),
        ),
        // Container(
        //   child: Text("柔成員嫖妓不付錢",
        //       style: TextStyle(fontSize: 30, color: Colors.green)),
        // ),
      ],
    ));
  }
}
