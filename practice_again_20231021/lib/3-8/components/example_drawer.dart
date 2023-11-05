import 'package:flutter/material.dart';

class ExDrawer {
  static getExDrawer(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        ListTile(
          title: Text("第一頁"),
          onTap: () {
            Navigator.pushNamed(context, "/");
          },
        ),
        ListTile(
          title: Text("第二頁"),
          onTap: () => Navigator.pushNamed(context, "/second"),
        ),
      ],
    ));
  }
}
