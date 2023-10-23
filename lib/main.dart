import 'package:flutter/material.dart';
import 'package:praktikum_uts/home_page.dart';
import 'package:praktikum_uts/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}
