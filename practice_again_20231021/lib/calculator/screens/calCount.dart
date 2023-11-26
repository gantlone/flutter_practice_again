import 'package:flutter/material.dart';
import 'package:practice_again_20231021/calculator/screens/caldrawer.dart';
import 'package:provider/provider.dart';

import '../viewmodel/cultapCount_dao.dart';

class CalCount extends StatelessWidget {
  const CalCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: CalDrawer.getDrawer(context),
        body: Container(
          child: Text(
              "點擊次數: " + context.read<CulTapCountDao>().tapCount.toString()),
        ));
  }
}
