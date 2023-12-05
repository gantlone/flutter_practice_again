import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practice_again_20231021/5-5/components/post_table.dart';
import 'package:practice_again_20231021/5-5/daos/post_dao.dart';
import 'package:practice_again_20231021/5-5/models/post.dart';
import 'package:practice_again_20231021/5-5/components/post_table_with_search.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
      future: PostDao.getPosts() as Future<List<Post>>,
      builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // 加載中的顯示
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}'); // 錯誤時的顯示
        } else if (!snapshot.hasData) {
          return Text('No data available'); // 沒有數據時的顯示
        } else {
          // 在有數據的情況下建構 PostTable widget
          return Scaffold(
            body: PostTableWithSearch(snapshot.requireData),
          );
        }
      },
    );
  }
}
