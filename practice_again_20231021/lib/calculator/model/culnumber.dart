class CulNumber {
  List<dynamic> listNum = [0];
  num varNum = 0;
  num varGloNum = 0;

  // CulNumber({
  //   required this.listNum,
  //   required this.varNum,
  //   required this.varGloNum,
  // });

  num combineNm() {
    try {
      // 將列表中的每個數字轉換為字符串，然後連接成字符串
      String concatenatedString = listNum.map((num) => num.toString()).join();

      // 如果字符串為空，則將結果設為 0，否則將字符串轉換為數字
      varNum = (concatenatedString.isEmpty) ? 0 : num.parse(concatenatedString);
    } catch (ex) {
      varNum = 0;
    }
    return varNum;
  }

  num addFun() {
    varGloNum += combineNm();
    if (varGloNum is double) {}
    listNum.clear();
    return varGloNum;
  }

  num minusFun() {
    varGloNum -= combineNm();
    listNum.clear();
    return varGloNum;
  }

  num multFun() {
    varGloNum *= combineNm();
    listNum.clear();
    return varGloNum;
  }

  dynamic divFun() {
    if (varNum != 0) {
      varGloNum = varGloNum / combineNm();
      listNum.clear();

      // 檢查是否是整數
      if (varGloNum % 1 == 0) {
        return varGloNum.toInt(); // 如果是整數，返回 int
      } else {
        return varGloNum; // 如果是小數，返回 double
      }
    } else {
      return '錯誤'; //啥值除以0等於啥也不是
    }
  }
}
