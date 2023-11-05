import 'package:flutter/material.dart';

class CommonDrawer {
  static getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('羅成員'),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            title: Text('雄問安'),
            onTap: () {
              Navigator.pushNamed(context, "/second");
            },
          ),
        ],
      ),
    );
  }
}
