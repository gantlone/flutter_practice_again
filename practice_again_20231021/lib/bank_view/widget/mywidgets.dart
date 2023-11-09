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
