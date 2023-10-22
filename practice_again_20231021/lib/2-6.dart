import 'dart:convert';

void main() {
  Map<String, dynamic> dynamicMap = {"name": "柔成員", "age": 30};
  //使用runtimeType，得知value的屬性
  print(dynamicMap["name"].runtimeType);
  print(dynamicMap["age"].runtimeType);

  String jsonObjectString = """{"name": "羅成員", "age": 30}""";
  Map<String, dynamic> fromJsonObjectStrToDartMap =
      jsonDecode(jsonObjectString);
  print(fromJsonObjectStrToDartMap);
  fromJsonObjectStrToDartMap["sex"] = "male";
  print(jsonEncode(fromJsonObjectStrToDartMap));
  print(jsonEncode(fromJsonObjectStrToDartMap).runtimeType);

  //題目
  Map<String, dynamic> roger = {
    "questionId": 9527,
    "questionContent": "大家都愛瘸瘸"
  };

  String encode1 = jsonEncode(roger);
  print(encode1);

  String encode2 =
      """{"itemId": 303031, "itemName": "白米飯", "itemPrice": 300}""";
  Map<String, dynamic> gg = jsonDecode(encode2);
  print(gg["itemId"]);

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
  print(gg2["jsonObject"]["stringInJsonObject"]);
}
