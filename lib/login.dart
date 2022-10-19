import 'package:flutter/material.dart';

import 'package:auth_screen/home.dart';
import 'package:auth_screen/login.dart';
import 'package:auth_screen/register.dart';
import 'package:auth_screen/loading.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  State<Login> createState() => _LoginState();

}

class _LoginState extends State<Login> {
  String? emailAdress = "";
  String? password = "";
  final TextEditingController emailAdressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Center(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("Bejelentkezés", style: TextStyle(fontSize: 66),),
                Form(child: Container(
                  margin: EdgeInsets.all(100.0),
                  decoration: BoxDecoration(
                
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email cím",
                      focusColor: Colors.purple,
                      hoverColor: Colors.purple,

                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                      width: 1,
                      color: Colors.purple,
                      ),
                      ),
                    ),
                    controller: emailAdressController,
                    keyboardType: TextInputType.name,
                    onSaved: (value){
                      emailAdressController.text = value!;
                    },
                  ),

                )

                ),
                Form(child: Container(
                  margin: EdgeInsets.all(100.0),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Jelszó",
                      focusColor: Colors.purple,
                      hoverColor: Colors.purple,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    controller: passwordController,
                    keyboardType: TextInputType.name,
                    onSaved: (value){
                      passwordController.text = value!;
                    },
                  ),

                )

                ),
                TextButton(onPressed: (){
                  setState(() {
                    emailAdress = emailAdressController.text;
                    password = passwordController.text;
                  });
                }, child: Text("Bejelentkezés",) ),
                Text("Email: $emailAdress\nJelszó: $password"),
              ],
            ),
          ),
        ),
      )

    );
  }
}
