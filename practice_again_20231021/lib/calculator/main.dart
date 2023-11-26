import 'package:flutter/material.dart';
import 'package:practice_again_20231021/calculator/screens/calCount.dart';
import 'package:practice_again_20231021/calculator/screens/calculator.dart';
import 'package:practice_again_20231021/calculator/viewmodel/cultapCount_dao.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<CulTapCountDao>(
        create: (context) => CulTapCountDao(),
      )
    ],
    child: Main(),
  ));
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    // print(screenWidth);
    // print(screenHeight);
    return MaterialApp(
      routes: {
        '/cul': (BuildContext context) => Calculator(),
        '/count': (BuildContext context) => CalCount(),
      },
      home: Scaffold(body: Calculator()),
      initialRoute: '/cul',
    );
    // return MaterialApp(home: Scaffold(body: calc()));
  }
}
