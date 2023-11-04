import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: Container(
                width: 500,
                height: 500,
                color: Colors.amber,
                child: Text("我咬金童須", style: TextStyle(fontSize: 30)))),
        Expanded(
            child: Container(
                width: 200,
                height: 200,
                color: Colors.deepOrange,
                child:
                    Text("泡麵頭最好的夥伴是誰，tttt摸", style: TextStyle(fontSize: 30)))),
        Expanded(
            child: Container(
                color: Colors.green,
                child: Text("柔成員嫖妓不付錢", style: TextStyle(fontSize: 30)))),
      ],
    ));
  }
}
