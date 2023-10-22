void main() {
  //Future應用 先後順序為: main > task > queue
  print(" 會議召開，這是一次特別任務");

  Future.delayed(Duration(seconds: 1), () {
    print(" 小美收到下台中的任務，開始準備行囊");
  });

  Future.microtask(() => print(" 小菜練習flutter"));

  print("會議結束");

  //題目
  //1
  print("開始");
  Future.delayed(Duration(seconds: 1), () {
    print("你還在道歉，你剛剛還在道謝");
  });
  print("也結束了");

  //2
  print("開始");
  Future.delayed(Duration(seconds: 1), () {
    print("你還在道歉，你剛剛還在道謝");
  });

  Future.microtask(() => print("醒了昨夜的事情"));
  print("也結束了");
}
