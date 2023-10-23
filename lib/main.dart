import 'package:flutter/material.dart';
import 'package:praktikum_uts/home_page.dart';
import 'package:praktikum_uts/item.dart';
import 'package:praktikum_uts/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) {
        final item = ModalRoute.of(context)!.settings.arguments as Item;
        return ItemPage(item: item);
    },
  },)
  );
}
