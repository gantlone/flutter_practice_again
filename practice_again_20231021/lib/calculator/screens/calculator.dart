import 'package:flutter/material.dart';
import 'package:practice_again_20231021/calculator/widget/mywidgets.dart';

// class Calculator extends StatefulWidget {
//   const Calculator({Key? key}) : super(key: key);

//   @override
//   _CalculatorState createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//   @override
//   Widget build(BuildContext context) {
//     Widget textField =

//     return Container();
//   }
// }

class keyBoard extends StatelessWidget {
  const keyBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.only(top: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ClearButton(),
              numButton('0'),
              dotButton(),
              addButton()
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              numButton('7'),
              numButton('8'),
              numButton('9'),
              minusButton()
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              numButton('4'),
              numButton('5'),
              numButton('6'),
              multButton()
            ]),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              numButton('1'),
              numButton('2'),
              numButton('3'),
              divButton()
            ]),
          ],
        ));
  }
}
