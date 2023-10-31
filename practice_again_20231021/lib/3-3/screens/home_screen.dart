import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        height: 500,
        color: Colors.blue,
        child: Text(
          "大家都是好Jable",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
