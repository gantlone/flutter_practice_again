import 'package:flutter/material.dart';

class CommonDrawer {
  static getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("公司官網"),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            title: Text("大話雲端"),
            onTap: () {
              Navigator.pushNamed(context, "/cloud-guide");
            },
          ),
          ListTile(
            title: Text("未來必備認證"),
            onTap: () {
              Navigator.pushNamed(context, "/future-class");
            },
          ),
        ],
      ),
    );
  }
}
