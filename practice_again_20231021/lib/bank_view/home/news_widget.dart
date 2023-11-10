import 'package:flutter/material.dart';

import '../util/color.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Row(
          children: [
            Text(
              '新闻头条',
              style: TextStyle(
                  color: createMaterialColor(Color(0xFF62C3EE)),
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Icon(Icons.terrain, color: Colors.yellow, size: 32),
            Text(
              '关于我行降低小微企业和个体...',
              style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.lens, color: Colors.red, size: 12),
            Text(
              ' 更多',
              style: TextStyle(fontSize: 12, height: 1),
            ),
            Icon(Icons.chevron_right, size: 24),
          ],
        ),
      ],
    ));
  }
}
