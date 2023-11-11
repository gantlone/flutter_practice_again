import 'dart:math';

import 'package:flutter/material.dart';

class ExScreens extends StatefulWidget {
  const ExScreens({Key? key}) : super(key: key);

  @override
  _ExScreensState createState() => _ExScreensState();
}

class _ExScreensState extends State<ExScreens> {
  Color ramColor = Colors.blue;
  double widthLong = 300;
  double heightLong = 300;
  Random random = Random();

  Color _generateRandomColor() {
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  double _generateRandomLong() {
    return random.nextDouble() * 500;
  }

  @override
  Widget build(BuildContext context) {
    Widget exContainer = Container(
      color: ramColor,
      width: widthLong,
      height: heightLong,
    );

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    ramColor = _generateRandomColor();
                  });
                },
                child: const Text("1")),
            TextButton(
                onPressed: () {
                  setState(() {
                    widthLong = _generateRandomLong();
                    heightLong = _generateRandomLong();
                  });
                },
                child: const Text("2")),
            TextButton(
                onPressed: () {
                  setState(() {
                    ramColor = Colors.blue;
                    widthLong = 300;
                    heightLong = 300;
                  });
                },
                child: const Text("3")),
            exContainer
          ],
        ),
      ),
    );
  }
}
