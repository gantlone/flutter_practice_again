import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-8/components/common_drawer.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: CommonDrawer.getDrawer(context),
        body: TextButton(
          child: Text("羅成員最愛泰山"),
          onPressed: () {
            Navigator.pushNamed(context, "/second");
          },
        ));
  }
}
