import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget topShow(String image, String name, double? width) {
  return Column(
    children: [
      Image.asset(image, width: width),
      SizedBox(height: 5),
      Text(
        name,
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    ],
  );
}

Widget topShow2(String image, String name, double? width) {
  return Container(
    width: 70,
    //color: Colors.green,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image, width: width),
        SizedBox(height: 8),
        Text(
          name,
          style: TextStyle(fontSize: 14),
        ),
      ],
    ),
  );
}

Widget subTitle01(String title) {
  return Container(
    padding: EdgeInsets.all(5),
    child: Text(
      title,
      style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
    ),
    alignment: Alignment.topLeft,
  );
}

Widget subTitle02(String title, String subTitle) {
  return Container(
    padding: EdgeInsets.only(left: 10.w, bottom: 5.h, top: 10.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Text(
              subTitle,
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Noto Sans Traditional Chinese'),
            ),
            Icon(
              Icons.chevron_right,
              size: 24,
            ),
          ],
        )
      ],
    ),
  );
}
