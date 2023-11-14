import 'package:practice_again_20231021/calculator/function/fun.dart';

class CulNumber {
  List<dynamic> listNum = [0];
  num numNum = 0;
  dynamic numGloNum = 0;
  List<dynamic> listFunction = [0];

  combineNm() {
    try {
      // 將列表中的每個數字轉換為字符串，然後連接成字符串
      String concatenatedString = listNum.map((num) => num.toString()).join();

      // 如果字符串為空，則將結果設為 0，否則將字符串轉換為數字
      numNum = (concatenatedString.isEmpty) ? 0 : num.parse(concatenatedString);
    } catch (ex) {
      numNum = 0;
    }

    if (listFunction[listFunction.length - 1] is String) {
      listFunction.add(numNum);
    } else {
      listFunction[listFunction.length - 1] = numNum;
    }
  }

  num calFun(String symbol) {
    if (listFunction.length != 3) {
      if (listFunction[listFunction.length - 1] is! String) {
        listFunction.add(symbol);
      } else {
        listFunction[listFunction.length - 1] = symbol;
      }
    } else {
      numGloNum =
          calculateFun(listFunction[0], listFunction[2], listFunction[1]);
      listFunction.clear();
      listFunction.add(numGloNum);
    }

    numNum = 0;
    listNum = [0];
    return listFunction[0];
  }

  sumFun() {
    if (listFunction.length % 2 == 0) {
    } else {}
  }
}
