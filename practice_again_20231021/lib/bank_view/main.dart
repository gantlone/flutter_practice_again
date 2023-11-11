import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_again_20231021/bank_view/home/swiper_widget.dart';
import 'package:practice_again_20231021/bank_view/home/title_widget.dart';
import 'package:practice_again_20231021/bank_view/widget/mywidgets.dart';

import 'home/home_top.dart';
import 'home/news_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(432, 816),
        builder: (BuildContext context, Widget) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: '銀行APP應用',
              theme: ThemeData(primarySwatch: Colors.blue),
              home: Main(title: '銀行APP應用'),
            ));
  }
}

class Main extends StatefulWidget {
  Main({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleWidget(),
        actions: [
          Image.asset("assets/ex/head2.png"),
          SizedBox(width: 5),
          Image.asset("assets/ex/head3.png", width: 30),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeTop(),
            NewsWidget(),
            SwiperWidget(),
            subTitle01("城市精選"),
            Container(
              margin: EdgeInsets.all(10),
              height: 120,
              //color: Colors.blue,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/ex/loan.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            subTitle02("民生眼波聽", "無限精彩 進等你來")
          ],
        ),
      ),
    );
  }
}
