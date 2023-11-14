dynamic calculateFun(num num1, num num2, String operation) {
  num result;

  switch (operation) {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("除數不能為零");
        return double.nan; // 返回 NaN 表示計算錯誤
      }
      break;
    default:
      print("不支援的操作");
      return double.nan; // 返回 NaN 表示計算錯誤
  }

  return result;
}
