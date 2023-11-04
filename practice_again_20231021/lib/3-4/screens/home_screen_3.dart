import 'package:flutter/material.dart';

class HomeScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 700,
              color: Colors.amber,
              child: Text(
                "羅成員嫖妓不付錢",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blueAccent,
              child: Text(
                "羅成員嫖妓不付錢",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              color: Colors.green,
              child: Text(
                "羅成員嫖妓不付錢",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
