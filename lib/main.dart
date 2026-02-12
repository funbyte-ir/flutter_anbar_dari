import 'package:anbar_dari/pages/main_screen.dart';
import 'package:anbar_dari/pages/products_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => MainScreen(),
        "/products": (context) => ProductsPage(),
      },
    ),
  );
}
