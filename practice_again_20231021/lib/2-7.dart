import 'dart:convert';

void main() {
  String stringOfJsonArray = """[1,2,3,4,5,6]""";
  //有時候不一定是Map型態，也可能是List
  List<dynamic> jsonArray = jsonDecode(stringOfJsonArray);
  for (int element in jsonArray) {
    print(element);
  }

  //添加資料
  jsonArray.add(7);
  String jsonArrayToString = jsonEncode(jsonArray);
  print(jsonArrayToString);

  //json array string
  String jsonArrayStringOfJsonObject = """
  [
    {"name": "羅成員", "age": 30}
    ,{"name": "雄哥哥", "age": 29}
    ,{"name": "蘇南", "age": 27}
  ]""";
  List<dynamic> jsonArrayOfJsonObject = jsonDecode(jsonArrayStringOfJsonObject);
  print(jsonArrayOfJsonObject[0]["name"]);
  for (Map<String, dynamic> jsonOject in jsonArrayOfJsonObject) {
    print(jsonOject);
  }

  jsonArrayOfJsonObject.add({"name": "泰山", "age": 6});
  String jsonArrayOfObjectToString = jsonEncode(jsonArrayOfJsonObject);
  print(jsonArrayOfObjectToString);

  //題目
  String vaildNestedJsonObjectString = """
  {"jsonString": "hello",
   "jsonNumber": 123,
   "jsonArray": [1,2,3,4,5,6],
   "jsonObject": {
      "stringInJsonObject": "abc",
      "numberInJsonObject": 456,
      "arrayInJsonObject": [7,8,9,1,2,3],
      "objectInJsonObject": {"lastStringField": "cxcxc"}
      }
  }""";
  Map<String, dynamic> gg2 = jsonDecode(vaildNestedJsonObjectString);
  List<dynamic> cc = gg2["jsonObject"]["arrayInJsonObject"];
  cc.add(9527);
  print(cc);
}
