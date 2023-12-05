import 'package:dio/dio.dart';
import 'package:practice_again_20231021/5-3/models/expost.dart';

class ExPostDao {
  static Future<List<ExPost>> getDio() async {
    Dio dio = Dio();
    var url = "https://jsonplaceholder.typicode.com/posts";

    try {
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        List<ExPost> exPosts =
            data.map((json) => ExPost.fromJson(json)).toList();
        return exPosts;
      } else {
        return [];
      }
    } catch (e) {
      print("Error fetching data: $e");
      return [];
    }
  }
}
