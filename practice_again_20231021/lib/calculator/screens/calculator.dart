import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../model/CulNumber.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String displayText = '';
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
            print(cNum.numNum);
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
            cNum.listNum = [0];
            cNum.numGloNum = 0;
            cNum.numNum = 0;
            cNum.listFunction = [0];
            setState(() {
              displayText = '';
            });
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
            print(cNum.numNum);
          },
          child: Text('.'),
        ));
  }

  Widget arithmeticButton(String symbol) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        //height: 180,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.all(5),
        child: TextButton(
          onPressed: () {
            setState(() {
              displayText = cNum.calFun(symbol).toString();
            });

            print(cNum.numNum);
            print(cNum.listFunction);
          },
          child: Text(symbol),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('計算機')),
        body: Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            margin: EdgeInsets.all(25),
            child: Column(children: [
              Container(
                alignment: Alignment.bottomRight,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                margin: EdgeInsets.all(10),
                child: Text(
                  displayText,
                  style: TextStyle(fontSize: 50.0),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ClearButton(),
                                numButton('0'),
                                dotButton(),
                                arithmeticButton('+')
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                numButton('7'),
                                numButton('8'),
                                numButton('9'),
                                arithmeticButton('-')
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                numButton('4'),
                                numButton('5'),
                                numButton('6'),
                                arithmeticButton('*')
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                numButton('1'),
                                numButton('2'),
                                numButton('3'),
                                arithmeticButton('/')
                              ]),
                        ),
                      ]),
                ),
              )
            ])));
  }
}
