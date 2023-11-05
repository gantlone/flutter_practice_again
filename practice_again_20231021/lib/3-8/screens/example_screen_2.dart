import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-8/components/example_drawer.dart';

class ExampleScreen1 extends StatelessWidget {
  const ExampleScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: ExDrawer.getExDrawer(context),
      body: Text("第一個頁面"),
    );
  }
}
