import 'dart:convert';

import 'package:practice_again_20231021/5-4/models/post.dart';
import 'package:dio/dio.dart';

class PostDao {
  static Future<List<Post>> getPosts() async {
    Dio dio = Dio();
    var url = "https://jsonplaceholder.typicode.com/posts";

    try {
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        List<Post> posts = data.map((json) => Post.fromJson(json)).toList();
        return posts;
      } else {
        print("Request failed with status: ${response.statusCode}");
        return []; // 返回一个空的 List<Post>
      }
    } catch (e) {
      print("Error fetching data: $e");
      return [];
    }
  }
}
