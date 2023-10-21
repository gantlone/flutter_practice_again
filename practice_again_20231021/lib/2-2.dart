void main() {
  print(iAmStringFunction('我咬金銅虛我使嘴牛b'));
  print(iAmIntFunction(87).toString());
  iWillNotReturnValue();
}

String iAmStringFunction(String iAmString) {
  return '雲育鏈' + iAmString;
}

int iAmIntFunction(int iAmInt) {
  return iAmInt * 20;
}

void iWillNotReturnValue() {
  print('通常會用於資料庫、硬碟等外部系統接觸的情境');
}
