import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' NewsApp ',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
