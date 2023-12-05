import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:practice_again_20231021/5-5/models/post.dart';

class PostTableWithSearch extends StatefulWidget {
  List<Post> posts;
  PostTableWithSearch(this.posts);

  @override
  _PostTableWithSearchState createState() => _PostTableWithSearchState();
}

class _PostTableWithSearchState extends State<PostTableWithSearch> {
  List<Post> filteredPosts = [];

  //觸發textfiels時的操作
  void changedFilteredPosts(String userInput) {
    filteredPosts = this.widget.posts.where((element) {
      if (userInput == "") {
        return true;
      } else if (element.title.contains(userInput)) {
        print(element.title);
        return true;
      } else {
        return false;
      }
    }).toList();

    if (filteredPosts.length == 0) {
      filteredPosts.add(Post(999, 999, "查無資料", "查無資料"));
    }
  }

  @override
  Widget build(BuildContext context) {
    //TextField部分
    if (filteredPosts.length == 0) {
      changedFilteredPosts('');
    }

    var searchTextEditingController = TextEditingController();

    Widget searcherBar = TextField(
        controller: searchTextEditingController,
        decoration: const InputDecoration(
            border: OutlineInputBorder(), hintText: "roger北果乾"),
        onSubmitted: (value) {
          setState(() {
            changedFilteredPosts(value);
          });
        });

    //DataTable部分
    List<String> columnName = (jsonDecode(filteredPosts[0].toJsonObjectString())
            as Map<String, dynamic>)
        .keys
        .toList();

    List<DataColumn> dataColumns = columnName.map((key) {
      return DataColumn(
        label: Text(key),
      );
    }).toList();

    List<DataRow> dataRows = filteredPosts.map((Post) {
      Map<String, dynamic> postJson =
          (jsonDecode(Post.toJsonObjectString()) as Map<String, dynamic>);

      List<DataCell> dataCells = columnName.map((key) {
        return DataCell(Container(
          // 设置合适的宽度
          child: Text(
            postJson[key].toString(),
          ),
        ));
      }).toList();

      return DataRow(cells: dataCells);
    }).toList();

    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              child: searcherBar,
            ),
            Container(
              child: DataTable(
                rows: dataRows,
                columns: dataColumns,
              ),
            )
          ],
        ),
      ),
    );
  }
}
