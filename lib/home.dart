import 'package:flutter/material.dart';

import 'package:auth_screen/home.dart';
import 'package:auth_screen/login.dart';
import 'package:auth_screen/register.dart';
import 'package:auth_screen/loading.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Főoldal"), centerTitle: true,),
      body: Center(
        child: Text("HOME"),
      ),


      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Center(child: Text("ASd")),),
            ListTile(title: Text("Login"), leading: Icon(Icons.login), onTap: () => Get.to(Login()) ,),
            ListTile(title: Text("Regisztráció"), leading: Icon(Icons.app_registration), onTap: () => Get.to(Register()) ,)


          ],
        ),
      ),

    );


  }
}
