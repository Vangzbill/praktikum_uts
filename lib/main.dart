import 'package:flutter/material.dart';
import 'package:praktikum_uts/home_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.blue,
      fontFamily: 'Roboto',
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      
    },
  ));
}
