// void main() {
//   print("小菜與小美準備對行程");
//   xiaoMeiCoffeeSchedule();
//   Future.microtask(() => print("小菜與小美跳海死了"));
//   print("小美你在狗叫些甚麼呢?");
// }

// void xiaoMeiCoffeeSchedule() async {
//   String lastTask = await Future.microtask(() => "小美吃中餐");

//   if (lastTask == "小美吃中餐") {
//     print(lastTask);
//     lastTask = "小美訂高鐵票";
//   }

//   if (lastTask == "小美訂高鐵票") {
//     print(lastTask);
//     lastTask = "小美搭車去高鐵";
//   }

//   print(lastTask);
// }

//題目
//1
// void main() {
//   asy();
// }

// void asy() async {
//   String lastTask = await Future.microtask(() => "為了要做高效能的app");

//   if (lastTask == "為了要做高效能的app") {
//     print(lastTask);
//     lastTask = "我們必須知道異步分工合作";
//   }

//   if (lastTask == "我們必須知道異步分工合作") {
//     print(lastTask);
//     lastTask = "要知道Dart的異步分工機制";
//   }

//   if (lastTask == "要知道Dart的異步分工機制") {
//     print(lastTask);
//     lastTask = "透過建立一個新函數";
//   }

//   if (lastTask == "透過建立一個新函數") {
//     print(lastTask);
//     lastTask = "並使用async和await最後等到去死";
//   }

//   print(lastTask);
// }

//題目
//2
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  print("request start ...");
  asyUrl();
}

void asyUrl() async {
  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/users/1');

  var response2 = await http.get(url);

  if (response2.statusCode == 200) {
    Map<String, dynamic> backGet2 = jsonDecode(response2.body);
    print(backGet2['phone']);
  } else {
    print(response2.statusCode);
  }

  print("request end ...");
}
