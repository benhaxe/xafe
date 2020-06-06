import 'package:flutter/material.dart';
import 'package:xafe/res/themes.dart';
import 'package:xafe/xafe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xafe',
      theme: xafeTheme(),
      home: Xafe(),
    );
  }
}
