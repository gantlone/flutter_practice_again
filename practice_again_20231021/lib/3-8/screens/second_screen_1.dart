import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-8/components/common_drawer.dart';

class SecondScreen1 extends StatelessWidget {
  const SecondScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: CommonDrawer.getDrawer(context),
        body: TextButton(
          child: Text("雄問安最愛羅成員"),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
