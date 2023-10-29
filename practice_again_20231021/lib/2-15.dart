import 'dart:convert';
import 'package:http/http.dart' as http;

// void main() async {
//   List<User> userArray = await getRemoteSystemUserData();
//   print(userArray[0].toJson());
// }

// class User {
//   int id;
//   String name;
//   String username;
//   String email;

//   User(this.id, this.name, this.username, this.email);

//   void printUserInfo() {
//     print("用戶叫做$name，用戶的帳號為$username，用戶的id為$id，信箱為$email");
//   }

//   //使用多重建構子(factory)，須有以下關係
//   //1.必須return一個class，如User(...)
//   //2.會是一個函數，所以需要給參數與方法邏輯
//   factory User.fromJson(dynamic userJson) {
//     int extractId = userJson['id'];
//     String extractName = userJson['name'];
//     String extractUserName = userJson['username'];
//     String extractEmail = userJson['email'];

//     return User(extractId, extractName, extractUserName, extractEmail);
//   }

//   String toJson() {
//     dynamic instanceMap = {
//       'id': id,
//       'name': name,
//       'username': username,
//       'email': email
//     };
//     return jsonEncode(instanceMap);
//   }
// }

// Future<List<User>> getRemoteSystemUserData() async {
//   Uri url = Uri.parse("https://jsonplaceholder.typicode.com/users");
//   http.Response remoteSystemResponse = await http.get(url);
//   List<dynamic> jsonArrayFromRemote = jsonDecode(remoteSystemResponse.body);
//   List<User> userArray = jsonArrayFromRemote.map((dy) {
//     return User.fromJson(dy);
//   }).toList();
//   return userArray;
// }

//題目
//1
void main() async {
  List<Post> aa = await getRemoteSystemUserData();
  print(aa[6].body);
  print(aa[7].toJson());
}

class Post {
  int userId;
  int id;
  String title;
  String body;

  Post(this.userId, this.id, this.title, this.body);

  //使用多重建構子(factory)，須有以下關係
  //1.必須return一個class，如User(...)
  //2.會是一個函數，所以需要給參數與方法邏輯
  factory Post.fromJson(dynamic userJson) {
    int extractId = userJson['userId'];
    int extractName = userJson['id'];
    String extractUserName = userJson['title'];
    String extractEmail = userJson['body'];

    return Post(extractId, extractName, extractUserName, extractEmail);
  }

  String toJson() {
    Map<String, dynamic> instanceMap = {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body
    };
    return jsonEncode(instanceMap);
  }
}

Future<List<Post>> getRemoteSystemUserData() async {
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  http.Response remoteSystemResponse = await http.get(url);
  List<dynamic> jsonArrayFromRemote = jsonDecode(remoteSystemResponse.body);
  List<Post> userArray = jsonArrayFromRemote.map((dy) {
    return Post.fromJson(dy);
  }).toList();
  return userArray;
}
