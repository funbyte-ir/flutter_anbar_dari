import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("داشبورد"),
            onTap: () {
              Navigator.of(context).pushNamed("/");
            },
          ),
          ListTile(
            title: Text("محصولات"),
            onTap: () {
              Navigator.of(context).pushNamed("/products");
            },
          ),
          ListTile(
            title: Text("انبار ها"),
            onTap: () {
              Navigator.of(context).pushNamed("/products");
            },
          ),
        ],
      ),
    );
  }
}
