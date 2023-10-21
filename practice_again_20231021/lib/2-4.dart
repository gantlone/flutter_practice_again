void main() {
  List<int> numList = [3, 5, 6, 1, 2];

  int sum1 = 0;
  for (int index = 0; index < 5; index++) {
    sum1 += numList[index];
  }
  print(sum1);

  int sum2 = 0;
  for (int num in numList) {
    sum2 += num;
  }
  print(sum2);

  List<String> starList = ['*', '**', '***', '****'];
  String sum3 = '';
  for (int index = 0; index < 4; index++) {
    sum3 = '$sum3${starList[index]}\n';
  }
  print(sum3);

  String sum4 = '';
  List<int> numList2 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  for (int index1 = 0; index1 < 9; index1++) {
    for (int index2 = 0; index2 < 9; index2++) {
      sum4 += '${numList2[index1]}*${numList2[index2]} ';
    }
    sum4 += '\n';
  }
  print(sum4);
}
