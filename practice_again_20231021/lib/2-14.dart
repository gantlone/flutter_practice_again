import 'dart:convert';

// void main() {
//   User demoUser = User(1, "羅成員", "roger9527", "roger9527@gmail.com");
//   print(demoUser.id);
//   print(demoUser.name);
//   print(demoUser.username);
//   print(demoUser.email);
//   demoUser.printUserInfo();
//   print(demoUser.toJson());

//   String userJsonString =
//       """{"id": 2, "name":"泰山", "username":"Tarzan", "email":"TarzanLoveRoger@gmail.com"}""";
//   User demoUser2 = User.fromJson(jsonDecode(userJsonString));
//   print(demoUser2.id);
//   print(demoUser2.name);
//   print(demoUser2.username);
//   print(demoUser2.email);
//   demoUser2.printUserInfo();
//   print(demoUser2.toJson());
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

//題目
//1
void main() {
  Cat cat = Cat(87, "點點點");
  print(cat.weight);
  print(cat.variety);
  cat.echo();
  print(cat.toJson());

  String aa = """{"weight": 1000, "variety":"破腦咖啡女"}""";
  Cat cat2 = Cat.fromJson(jsonDecode(aa));
  print(cat2.weight);
  print(cat2.variety);
  cat2.echo();
  print(cat2.toJson());
}

class Cat {
  int weight;
  String variety;

  Cat(this.weight, this.variety);

  void echo() {
    print("喵");
  }

  //使用多重建構子(factory)，須有以下關係
  //1.必須return一個class，如User(...)
  //2.會是一個函數，所以需要給參數與方法邏輯
  factory Cat.fromJson(dynamic userJson) {
    int extractId = userJson['weight'];
    String extractName = userJson['variety'];

    return Cat(extractId, extractName);
  }

  String toJson() {
    dynamic instanceMap = {'weight': weight, 'variety': variety};
    return jsonEncode(instanceMap);
  }
}
