import 'package:flutter/material.dart';

class SecondScreen1 extends StatelessWidget {
  const SecondScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextButton(
            child: Text("大家超級討厭雄問安"),
            onPressed: () {
              Navigator.pop(context);
            }),
        TextButton(
            child: Text("前往第三頁面"),
            onPressed: () {
              Navigator.pushNamed(context, "/third");
            }),
      ],
    ));
  }
}
