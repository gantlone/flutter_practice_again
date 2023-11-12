import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_again_20231021/calculator/model/culnumber.dart';

CulNumber cNum = CulNumber();

Widget numButton(String strNum) {
  return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      //height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(5),
      child: TextButton(
        onPressed: () {
          cNum.listNum.add(num.parse(strNum));
          cNum.combineNm();
          print(cNum.varNum);
        },
        child: Text(strNum),
      ));
}

Widget ClearButton() {
  return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      //height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(5),
      child: TextButton(
        onPressed: () {
          cNum.listNum = [];
          cNum.varGloNum = 0;
          cNum.varNum = 0;
        },
        child: Text('AC'),
      ));
}

Widget dotButton() {
  return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      //height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(5),
      child: TextButton(
        onPressed: () {
          if (!cNum.listNum.contains('.')) {
            cNum.listNum.add('.');
          }
          cNum.combineNm();
          print(cNum.varNum);
        },
        child: Text('.'),
      ));
}

Widget addButton() {
  return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      //height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(5),
      child: TextButton(
        onPressed: () {
          cNum.addFun();
          print(cNum.varNum);
          print(cNum.varGloNum);
        },
        child: Text('+'),
      ));
}

Widget minusButton() {
  return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      //height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(5),
      child: TextButton(
        onPressed: () {
          cNum.minusFun();
          print(cNum.varNum);
          print(cNum.varGloNum);
        },
        child: Text('-'),
      ));
}

Widget multButton() {
  return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      //height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(5),
      child: TextButton(
        onPressed: () {
          cNum.multFun();
          print(cNum.varNum);
          print(cNum.varGloNum);
        },
        child: Text('x'),
      ));
}

Widget divButton() {
  return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      //height: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.all(5),
      child: TextButton(
        onPressed: () {
          cNum.divFun();
          print(cNum.varNum);
          print(cNum.varGloNum);
        },
        child: Text('/'),
      ));
}
// List<Widget> generateNumButtons(int start, int count) {
//   List<Widget> buttons = [];

//   for (int i = start; i <= count; i += 1) {
//     buttons.add(numButton(i.toString()));
//   }

//   return buttons;
// }
