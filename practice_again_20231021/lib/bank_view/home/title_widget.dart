import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/ex/head.png"),
        SizedBox(
          width: 10,
        ),
        Image.asset("assets/ex/cal02.png"),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 200,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: TextField(
            focusNode: FocusNode(),
            decoration: InputDecoration(
                prefix: Icon(Icons.search),
                prefixIconConstraints: BoxConstraints(minWidth: 30),
                hintText: "羅成員",
                hintStyle: TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }
}
