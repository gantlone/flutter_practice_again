import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:practice_again_20231021/5-4/models/post.dart';

class PostTable extends StatelessWidget {
  final List<Post> posts;
  PostTable(this.posts);

  @override
  Widget build(BuildContext context) {
    //欄位headertext
    List<String> columnName =
        (jsonDecode(posts[0].toJsonObjectString()) as Map<String, dynamic>)
            .keys
            .toList();

    //將headertext放入DataColumn
    List<DataColumn> dataColumns = columnName.map((key) {
      return DataColumn(label: Text(key));
    }).toList();

    //取rows
    List<DataRow> dataRows = posts.map((post) {
      //將每個row的json轉成string
      Map<String, dynamic> postJson =
          jsonDecode(post.toJsonObjectString()) as Map<String, dynamic>;

      //寫入單一row裡面的cell
      List<DataCell> dataCells = columnName.map((key) {
        return DataCell(Text(postJson[key].toString().replaceAll('\n', '')));
      }).toList();

      //回傳單一row
      return DataRow(cells: dataCells);
    }).toList();

    return DataTable(columns: dataColumns, rows: dataRows);
  }
}
