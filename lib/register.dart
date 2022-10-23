import 'package:flutter/material.dart';

import 'package:auth_screen/home.dart';
import 'package:auth_screen/login.dart';
import 'package:auth_screen/register.dart';
import 'package:auth_screen/loading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  String result = "";
  String checkEmails(String email1, String email2) {
    if (email1.isEmpty  || email2.isEmpty) {
      return "";
    }
    else if(email1.compareTo(email2) == 0 ){
      return "a két cím megegyezik!";
    }
    else {
      return "helytelen! Eltérő Email címek!";
    }
  }

  final TextEditingController emailAddressController = TextEditingController();


  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailAgainController = TextEditingController();
  @override
  Widget desktop(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF7F7CAF),
        body: SafeArea(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(40.0),

              width: MediaQuery.of(context).size.width * 0.35,
              // height: MediaQuery.of(context).size.height * 0.50,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Regisztráció",
                      style: TextStyle(fontSize: 66),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Email Cím", textAlign: TextAlign.center,),
                            fillColor: Color(0xFFD9D9D9),
                            filled: true,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide.none),


                          ),
                          

                          controller: emailAddressController,

                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Email Cím újra", textAlign: TextAlign.center,),
                            fillColor: Color(0xFFD9D9D9),
                            filled: true,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide.none),


                          ),
                          controller: emailAgainController,

                        ),

                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("Jelszó", textAlign: TextAlign.center,),
                            fillColor: Color(0xFFD9D9D9),
                            filled: true,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide.none),


                          ),
                          controller: passwordController,

                          obscureText: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),


                      ],
                    )
                    ),

                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(16.0)),
                        backgroundColor: MaterialStateProperty.all(Color(0xFF7F7CAF)),

                      ),
                        onPressed: () {
                          setState(()
                          {
                            result = checkEmails(emailAddressController.text, emailAgainController.text);
                          }
                          );
                        },
                        child: Text(
                          "Regisztráció!",
                        )),
                    Text(
                      result!,
                      style: TextStyle(fontSize: 32, color: Colors.green),
                    ),

                    TextButton(onPressed: (){Get.back();}, child: Text("Már van fiókja? jelentkezzen be!")),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                        width: 500,
                        height: 250,
                        child: SvgPicture.asset("assets/login_register.svg")
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
  Widget mobil(BuildContext context) {
  return Scaffold(
    body: Column(
      children: [
        Text("asd"),
      ],
    ),
  );
  }
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width < 1024.0){
      return mobil(context);
    }
    return desktop(context);
  }
  }
