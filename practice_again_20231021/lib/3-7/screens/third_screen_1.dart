import 'package:flutter/material.dart';

class ThirdScreen1 extends StatelessWidget {
  const ThirdScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TextButton(
            child: Text("雄問安愛揉晟原"),
            onPressed: () {
              Navigator.pop(context);
            }));
  }
}
