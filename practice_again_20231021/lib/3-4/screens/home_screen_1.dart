import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: const Text("我愛羅成員", style: TextStyle(fontSize: 30)),
          ),
          Container(
            color: Colors.red,
            child: const Text("泰山", style: TextStyle(fontSize: 30)),
          ),
          Container(
            color: Colors.green,
            child: const Text("雄文安kyo告感", style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }
}
