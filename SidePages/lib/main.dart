import 'package:flutter/material.dart';
import 'screens/third_point.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdPoint(),
      theme: ThemeData.dark()
    );
  }
}