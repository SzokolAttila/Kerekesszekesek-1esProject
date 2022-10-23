import 'package:flutter/material.dart';

import 'package:auth_screen/home.dart';
import 'package:auth_screen/login.dart';
import 'package:auth_screen/register.dart';
import 'package:auth_screen/loading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  bool canRegister = false;

  String result = "";
  String checkEmails(String email1, String email2) {
    if (email1.isEmpty  || email2.isEmpty) {
      canRegister = false;
      return "";

    }
    else if(email1.compareTo(email2) == 0 ){
      canRegister = true;
      return "";
    }
    else {
      canRegister = false;
      return "helytelen! Eltérő Email címek!";
    }
  }

  String CheckPasswordLength(String Password){
    if(Password.isBlank == true){
      canRegister = false;

      return "";
    }
    else if(Password.length < 6){
      canRegister = false;
      return "legyen 6 karakternél hosszabb!";
    }
    else{
      canRegister = true;

      return "";
    }
  }


  String CheckPasswordSpecial(String Password) {
    if (Password.isBlank == true) {
      canRegister = false;

      return "";
    }
    else if (Password.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]')) == false) {
      canRegister = false;

      return "Tartalmazzon speciális karaktert!";

    }
    else {
      canRegister = true;
      return "";


    }
  }
  String CheckPasswordNumber(String Password) {
    if (Password.isBlank == true) {
      canRegister = false;

      return "";
    }
    else if (Password.contains(new RegExp(r'[0-9]')) == false) {
      canRegister = false;

      return "Tartalmazzon számot!";
    }
    else {
      canRegister = true;
      return "";
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
                      style: TextStyle(fontSize: 40),
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
                          keyboardType: TextInputType.emailAddress,
                          validator: (String? v){
                            if(!v!.isEmail){
                              return "Nem jó formátum!";
                            }
                            return null;
                          },
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
                          keyboardType: TextInputType.emailAddress,
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
                        //canRegister ?
                          setState(()
                          {
                            result = checkEmails(emailAddressController.text, emailAgainController.text);
                          })
                        //:
                      //      null
                        ;

                        },
                        child: Text(
                          "Regisztráció!",
                        )),
                    Text(
                      result!,
                      style: TextStyle(fontSize: 24, color: Colors.red),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(CheckPasswordLength(passwordController.text),),
                        Text(CheckPasswordSpecial(passwordController.text)),
                        Text(CheckPasswordNumber(passwordController.text)),

                      ],
                    ),

                    TextButton(onPressed:(){Get.back();}, child: Text("Már van fiókja? jelentkezzen be!")),

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
        backgroundColor: Color(0xFF7F7CAF),
        body: SafeArea(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(40.0),

              width: MediaQuery.of(context).size.width * 0.80,
              height: MediaQuery.of(context).size.height * 0.9,

              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Regisztráció",
                      style: TextStyle(fontSize: 25),
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
                          keyboardType: TextInputType.emailAddress,
                          validator: (String? v){
                            if(!v!.isEmail){
                              return "Nem jó formátum!";
                            }
                            return null;
                          },
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
                          keyboardType: TextInputType.emailAddress,
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
                          //canRegister ?
                          setState(()
                          {
                            result = checkEmails(emailAddressController.text, emailAgainController.text);
                          })
                          //:
                          //      null
                              ;

                        },
                        child: Text(
                          "Regisztráció!",
                        )),
                    Text(
                      result!,
                      style: TextStyle(fontSize: 24, color: Colors.red),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(CheckPasswordLength(passwordController.text),),
                        Text(CheckPasswordSpecial(passwordController.text)),
                        Text(CheckPasswordNumber(passwordController.text)),
                        SizedBox(
                          height: 10,
                        ),
                      ],

                    ),

                    TextButton(onPressed:(){Get.back();}, child: Text("Már van fiókja? jelentkezzen be!")),

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
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width < 1024.0){
      return mobil(context);
    }
    return desktop(context);
  }
  }
