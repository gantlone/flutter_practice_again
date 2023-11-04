import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.topCenter,
          width: 500,
          height: 500,
          margin: EdgeInsets.all(20),
          color: Colors.blue,
          child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.all(20),
              color: Colors.red,
              child: Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(20),
                color: Colors.black,
              ))),
    );
  }
}
