import 'package:flutter/material.dart';
import 'package:practice_again_20231021/5-3/daos/post_dao.dart';
import 'package:practice_again_20231021/5-3/models/post.dart';

class PostText extends StatelessWidget {
  const PostText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PostDao.getPosts(),
      builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
        List<Widget> widgets = [];

        print(snapshot.connectionState);
        print(snapshot.hasData);

        if (snapshot.connectionState == ConnectionState.done) {
          widgets = snapshot.requireData.map((post) {
            return Text(post.toJsonObjectString());
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
