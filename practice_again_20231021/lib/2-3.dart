import 'package:flutter/material.dart';

void main() {
  String var1 = '柔成員';

  if (var1 == 'cxcxc') {
    print('快找老師簽大話aws架構書');
  } else {
    print('快去買大話aws架構書與大話flutter');
  }

  int salary = 40000;

  if (salary / 2 - 10000 - 5000 > 30000) {
    print('有錢好傑寶');
  } else {
    print('我還是當壞傑寶好了好窮喔，恨瘸瘸');
  }

  int compInit = 1000000; //公司股本
  int compGet = 5000000; //公司股本
  int memberSalary = 40000; //員工薪資
  int memberCount = 5; //員工人數

  //公司削減
  int compDiscount = 2000000; //公司支出
  int compProtect = 10000; //勞健保
  double compkeeptax = 0.2; //營所稅

  double getcoco = compGet -
      (compGet * 0.05) -
      ((compGet -
              compDiscount -
              (memberCount * 12000) -
              (memberCount * memberSalary) -
              (memberCount * 10000)) *
          compkeeptax);

  if (getcoco / compInit > 5) {
    print('好投資標的');
  } else if (getcoco / compInit >= 2 && getcoco / compInit <= 5) {
    print('可投資標的');
  } else {
    print('建議看其他家');
  }
}
