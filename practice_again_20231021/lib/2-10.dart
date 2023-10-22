import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  // //學習Futue中的.then方法將Future執行後的return往下一個then傳送
  // print("小菜與小美準備對行程");

  Future.microtask(() {
    return "吃中餐";
  }).then((lunch) {
    print(lunch);
    return "訂高鐵票";
  }).then((ticket) {
    print(ticket);
    return "搭車去死";
  }).then((take) {
    print(take);
  });

  print("小菜與小美死在半路上");

  //題目
  //1
  Future.microtask(() {
    return "醒了昨夜的事情";
  }).then((value) {
    print(value);
    return "你是不是又忘記";
  }).then((value) {
    print(value);
    return "枕頭把我叫醒";
  }).then((value) {
    print(value);
    return "或許是做惡夢的關係";
  }).then((value) {
    print(value);
  });

  //2
  Uri url2 = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
  Future.microtask(() {
    var response2 = http.get(url2);
    return response2;
  }).then((value) {
    Map<String, dynamic> backGet2 = jsonDecode(value.body);
    print(backGet2);
  });
}
