import 'package:flutter/material.dart';

class CommonDrawer {
  static Drawer getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('色塊變化'),
            onTap: () {
              Navigator.pushNamed(context, "/color-demo");
            },
          ),
          ListTile(
            title: Text('工作紀錄'),
            onTap: () {
              Navigator.pushNamed(context, "/task");
            },
          ),
          ListTile(
            title: Text('工作數量'),
            onTap: () {
              Navigator.pushNamed(context, "/amount");
            },
          ),
        ],
      ),
    );
  }
}
