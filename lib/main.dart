import 'dart:js';

import 'package:flutter/material.dart';

import 'package:auth_screen/home.dart';
import 'package:auth_screen/login.dart';
import 'package:auth_screen/register.dart';
import 'package:auth_screen/loading.dart';
import 'package:get/get.dart';

void main() async{

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {

        //'/': (context) => Loading(),
        '/': (context) => Home(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),

      },
    );
  }
}

