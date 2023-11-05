import 'package:flutter/material.dart';
import 'package:practice_again_20231021/3-8/components/example_drawer.dart';

class ExampleScreen2 extends StatelessWidget {
  const ExampleScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: ExDrawer.getExDrawer(context),
        body: TextButton(
          child: Text("第二個頁面"),
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
        ));
  }
}
