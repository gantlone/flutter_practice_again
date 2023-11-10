import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/mywidgets.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/ex/bg.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              height: 95,
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  topShow('assets/ex/top01.png', '扫一扫', 40),
                  topShow('assets/ex/top02.png', '转账', 40),
                  topShow('assets/ex/top03.png', '数字人民币', 40),
                  topShow('assets/ex/top04.png', '我的资产', 40),
                ],
              )),
          Container(
            //width: 400,
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 180,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    topShow2('assets/ex/sectop01.png', '存款', 30),
                    topShow2('assets/ex/sectop02.png', '贷款', 30),
                    topShow2('assets/ex/sectop03.png', '理财产品', 30),
                    topShow2('assets/ex/sectop04.png', '信用卡', 30),
                    topShow2('assets/ex/sectop05.png', '直销银行', 30),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      topShow2('assets/ex/sectop06.png', 'VIP专区', 30),
                      topShow2('assets/ex/sectop07.png', '代销基金', 30),
                      topShow2('assets/ex/sectop08.png', '代销理财', 30),
                      topShow2('assets/ex/sectop09.png', '代销保险', 30),
                      topShow2('assets/ex/sectop10.png', '全  部', 30),
                    ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
