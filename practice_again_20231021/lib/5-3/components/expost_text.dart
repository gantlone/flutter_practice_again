import 'package:flutter/material.dart';
import 'package:practice_again_20231021/5-3/daos/expost_dao.dart';
import 'package:practice_again_20231021/5-3/models/expost.dart';

class ExpostText extends StatelessWidget {
  const ExpostText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ExPostDao.getDio(),
      builder: (BuildContext context, AsyncSnapshot<List<ExPost>> snapshot) {
        List<Widget> widgets = [];

        print(snapshot.connectionState);
        print(snapshot.hasData);

        if (snapshot.connectionState == ConnectionState.done) {
          widgets = snapshot.requireData.map((post) {
            return Text(
              post.toJson().toString().replaceAll('\n', '').trim(),
              softWrap: true, // 啟用自動換行
              overflow: TextOverflow.visible, // 超出部分不截斷
            );
          }).toList();
        }

        return SingleChildScrollView(
          child: Column(
            children: widgets,
          ),
        );
      },
    );
  }
}
