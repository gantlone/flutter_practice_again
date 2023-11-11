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

Widget feature(Color bgColor, String title, String content, String im1,
    String sub1, String im2, String sub2) {
  return Container(
    padding: EdgeInsets.only(left: 15, top: 10),
    width: 0.46.sw,
    color: bgColor,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
            Icon(Icons.chevron_right, size: 24)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(content),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/ex/$im1',
                  width: 60.w,
                ),
                Text(
                  sub1,
                  style: TextStyle(fontSize: 14.sp),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/ex/$im2',
                  width: 60.w,
                ),
                Text(
                  sub2,
                  style: TextStyle(fontSize: 14.sp),
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}
