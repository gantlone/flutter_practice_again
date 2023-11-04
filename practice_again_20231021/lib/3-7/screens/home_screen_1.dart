import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TextButton(
      child: Text("大家都愛揉晟原"),
      onPressed: () {
        Navigator.pushNamed(context, "/second");
      },
    ));
  }
}
