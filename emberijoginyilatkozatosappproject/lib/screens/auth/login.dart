import 'package:emberijoginyilatkozatosappproject/main.dart';
import 'package:emberijoginyilatkozatosappproject/screens/auth/auth.dart';
import 'package:emberijoginyilatkozatosappproject/screens/auth/register.dart';
import 'package:emberijoginyilatkozatosappproject/screens/navigation/navbar.dart';
import 'package:flutter/material.dart';
import 'package:emberijoginyilatkozatosappproject/constants/constants.dart';
import 'package:provider/provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

final _emailController = TextEditingController();
final _passwordController = TextEditingController();
bool visibility = false;
bool passwordObscured = true;
Icon iconNow = const Icon(
  Icons.visibility_off,
  color: Colors.grey,
);
Icon icon = const Icon(
  Icons.visibility,
  color: Colors.grey,
);
Icon icon2 = const Icon(
  Icons.visibility_off,
  color: Colors.grey,
);
bool passwordVisible = false;
String userEmail = '';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

String data2 = '';

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(milliseconds: 1000),
        () => {
              error = '',
            });
    logOutVisible = false;
    data = 'Go back to login page';
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

        child: Scaffold(
        backgroundColor: Color(0xFF7F7CAF),
    body:
    SafeArea(
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),)
                    ),
                    const Text(
                      'Bejelentkezés',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.0,
                      ),
                    ),

                    const SizedBox(
                      height: 22,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Visibility(
                        visible: true,
                        child: Center(
                          child: Text(
                            error,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                          width: 300,
                          height: 150,
                          child: Image.asset("lib/assets/images/login_register.png")
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: TextField(
                        style: const TextStyle(color: Colors.grey),
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      style: const TextStyle(color: Colors.grey),
                      controller: _passwordController,
                      obscureText: passwordObscured,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                        ),
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(
                          Icons.password,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () => {
                                  if (passwordObscured)
                                    {
                                      passwordVisible = false,
                                    }
                                  else
                                    {
                                      passwordVisible = true,
                                    },
                                  setState(() {
                                    passwordObscured = !passwordObscured;
                                    if (passwordVisible) {
                                      iconNow = icon2;
                                    } else {
                                      iconNow = icon;
                                    }
                                  }),
                                },
                            icon: iconNow),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          minimumSize: const Size.fromHeight(50),
                        ),
                        icon: const Icon(
                          Icons.lock_open,
                          size: 20,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Bejelentkezés',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () => {
                          setState(() {
                            visibility = true;
                            userEmail = _emailController.text.trim();
                          }),
                          Future.delayed(
                              const Duration(milliseconds: 1000),
                              () => {
                                    context
                                        .read<AuthenticationService>()
                                        .signIn(
                                            email: _emailController.text.trim(),
                                            password: _passwordController.text
                                                .trim()),
                                  }),
                          Future.delayed(
                            const Duration(milliseconds: 2500),
                            () => {
                              setState(() {
                                data2 = 'Wrong data entered';
                                visibility = false;
                              })
                            },
                          ),
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                          child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          primary: Colors.grey),
                          icon: const Icon(Icons.login, size: 20),
                          label: Text(
                          "Még nincs fiókja?",
                          style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          ),
                          ),
                          onPressed: () => {
                          setState(() {
                          visibility = true;
                          }),
                          Future.delayed(
                          const Duration(milliseconds: 500),
                          () => {
                          setState(() {
                          wrongData = false;
                          visibility = false;
                          Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterPage()));
                          })
                          },
                          ),
                          },
                          ),),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Visibility(
                          visible: visibility,
                          child: const CircularProgressIndicator(
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

        ),
      ),
    ))
    );
  }
}




