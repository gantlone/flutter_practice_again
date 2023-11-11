import 'package:flutter/material.dart';

class ColorfulDemoScreen extends StatefulWidget {
  ColorfulDemoScreen({Key? key}) : super(key: key);

  bool currentColorisRed = true;

  @override
  _ColorfulDemoScreenState createState() => _ColorfulDemoScreenState();
}

class _ColorfulDemoScreenState extends State<ColorfulDemoScreen> {
  @override
  Widget build(BuildContext context) {
    print('進入build函數時，widget的currentColorisRed');
    print(this.widget.currentColorisRed);

    Widget colorfulContainer;
    if (this.widget.currentColorisRed == true) {
      colorfulContainer = Container(
        color: Colors.red,
        width: 300,
        height: 300,
      );
    } else {
      colorfulContainer = Container(
        color: Colors.blue,
        width: 300,
        height: 300,
      );
    }

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    print('用戶點擊過程中，widget的currentColorisRed屬性');
                    print(this.widget.currentColorisRed);
                    //變更widget屬性
                    this.widget.currentColorisRed =
                        !this.widget.currentColorisRed;
                    print('用戶點擊過程後，widget的currentColorisRed屬性');
                    print(this.widget.currentColorisRed);
                  });
                },
                child: Text("按我會變色")),
            colorfulContainer
          ],
        ),
      ),
    );
  }
}
