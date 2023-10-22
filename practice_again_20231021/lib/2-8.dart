import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  //////get
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
  var response = await http.get(url);
  //print(response.body);

  Uri muitpleItemUrl = Uri.parse('https://jsonplaceholder.typicode.com/users/');
  var muitpleResponses = await http.get(muitpleItemUrl);
  //print(muitpleResponses.body);
  List<dynamic> jsonArrayFromRemote = jsonDecode(muitpleResponses.body);
  print(jsonArrayFromRemote[9]);

  //////post
  Uri postItemUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts/');
  String postRequestJsonBody =
      jsonEncode({"userId": "99", "title": "雲育鏈", "body": "半夜寫程式，累阿"});
  var postResponse = await http.post(postItemUrl, body: postRequestJsonBody);
  print(postResponse.body);

  //////題目
  //1
  Uri url1 = Uri.parse('https://jsonplaceholder.typicode.com/posts/');
  var response1 = await http.get(url1);
  Map<String, dynamic> backGet1 = jsonDecode(response1.body)[4];
  backGet1.remove("id");
  print(backGet1);
  String backPost1 = jsonEncode(backGet1);
  var postResponse1 = await http.post(url1, body: backPost1);
  print(postResponse1.body);

  //2
  Uri url2 = Uri.parse('https://jsonplaceholder.typicode.com/comments/');
  var response2 = await http.get(url2);
  Map<String, dynamic> backGet2 = jsonDecode(response2.body)[4];
  //backGet1.remove("id");
  print(backGet2);
  String backPost2 = jsonEncode(backGet2);
  var postResponse2 = await http.post(url2, body: backPost2);
  print(postResponse2.body);
}
