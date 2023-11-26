import 'package:flutter/material.dart';

class CalDrawer {
  static Drawer getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('計算機'),
            onTap: () {
              Navigator.pushNamed(context, "/cul");
            },
          ),
          ListTile(
            title: Text('點擊次數'),
            onTap: () {
              Navigator.pushNamed(context, "/count");
            },
          ),
        ],
      ),
    );
  }
}
