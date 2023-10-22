void main() {
  Map<String, String> positionMap = {
    "Manager": "我咬金童須",
    "name": "roger",
    "number": "9527"
  };

  print('${positionMap['Manager']}' + '我使嘴牛逼');

  positionMap['twitch'] = 'roger9527';

  for (String key in positionMap.keys) {
    print('$key，value=${positionMap[key]}');
  }

  positionMap.addAll({"homie": "雄哥哥"});

  print(positionMap);

  //題目
  Map<String, String> family = {"father": "柔成員", "mother": "雄哥哥", "son": "泰山"};

  family.addAll({"daughter": "鬼東", "smoker": "發仔"});

  family["dog"] = "小吉米";

  print(family);
}
