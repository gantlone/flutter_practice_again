import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Container(
            width: 500,
            height: 500,
            color: Colors.yellow,
            child: Text("我愛卡比", style: TextStyle(fontSize: 30)),
          ),
          Container(
            width: 250,
            height: 250,
            color: Colors.blue,
            child: Text("卡比愛羅盛垣", style: TextStyle(fontSize: 30)),
          ),
          Container(
            color: Colors.green,
            child: Text("羅成員嫖妓又不付錢", style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    ));
  }
}
