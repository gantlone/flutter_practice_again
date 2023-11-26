import 'package:flutter/material.dart';

class CulTapCountDao extends ChangeNotifier {
  int tapCount = 0;
  //int get tapCount => _tapCount;

  // 取得當前Todo中所有方法
  int getCount() {
    return tapCount;
  }

  void insertCount() {
    tapCount++;
    //notifyListeners();
  }
}
