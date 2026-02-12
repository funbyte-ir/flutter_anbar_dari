import 'package:anbar_dari/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("انبار داری"),
          backgroundColor: Colors.black12,
        ),
        body: Column(),
        drawer: AppDrawer(),
      ),
    );
  }
}
