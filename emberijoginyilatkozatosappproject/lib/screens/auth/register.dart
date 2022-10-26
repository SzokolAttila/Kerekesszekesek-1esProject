import 'package:emberijoginyilatkozatosappproject/main.dart';
import 'package:emberijoginyilatkozatosappproject/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:emberijoginyilatkozatosappproject/screens/navigation/navbar.dart';
import 'package:emberijoginyilatkozatosappproject/constants/constants.dart';
import 'package:emberijoginyilatkozatosappproject/screens/auth/auth.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:provider/provider.dart';

final _userEmailController = TextEditingController();
final _userRepeatPasswordController = TextEditingController();
final _userPasswordController = TextEditingController();
bool visibility = false;
bool wrongData = false;
bool _userPasswordValidController = false;
bool _userEmailValidController = false;
// ignore: non_constant_identifier_names
String error = '';
String newError = '';
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
bool passwordValidate = false;
bool exists = false;
String data = 'Go back to login page';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    logOutVisible = false;
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
                            'Regisztráció',
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
                          const SizedBox(
                            height: 11,
                          ),
                          TextField(

                            controller: _userEmailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              fillColor:Color(0xFFD9D9D9) ,
                              border:  UnderlineInputBorder(
                            borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                           ),
                              hintText: 'Email Cím',
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.grey),
                            controller: _userPasswordController,
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
                            height: 26,
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.grey),
                            controller: _userRepeatPasswordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                              ),
                              hintText: 'Repeat password',
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.password,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FlutterPwValidator(
                              controller: _userPasswordController,
                              minLength: 6,
                              uppercaseCharCount: 1,
                              numericCharCount: 1,
                              specialCharCount: 1,
                              width: 350,
                              height: 100,
                              successColor: Colors.green,
                              defaultColor: Colors.red,
                              failureColor: Colors.red,
                              onSuccess: () => {
                                    setState(() {
                                      passwordValidate = true;
                                    }),
                                  },
                              onFail: () => {
                                    setState(() {
                                      passwordValidate = false;
                                    }),
                                  }),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(EdgeInsets.all(16.0)),
                                backgroundColor: MaterialStateProperty.all(Color(0xFF7F7CAF)),
                              ),

                              onPressed: () => {
                                setState(() {
                                  if (EmailValidator.validate(
                                          _userEmailController.text.trim()) ==
                                      true) {
                                    if (passwordValidate == true) {
                                      if (_userPasswordController.text.trim() ==
                                          _userRepeatPasswordController.text.trim()) {
                                        _userPasswordValidController = true;
                                        _userEmailValidController = true;
                                      } else {
                                        newError =
                                            'The passwords provided do not match';
                                      }
                                    } else {
                                      newError =
                                          'The password provided does not meet the requirements';
                                    }
                                  } else {
                                    newError = 'The email provided is invalid';
                                  }
                                  visibility = true;
                                }),
                                Future.delayed(
                                    const Duration(milliseconds: 1500),
                                    () => {
                                          if (_userPasswordValidController == true &&
                                              _userEmailValidController == true)
                                            {
                                              context
                                                  .read<AuthenticationService>()
                                                  .signUp(
                                                      email: _userEmailController.text
                                                          .trim(),
                                                      password:
                                                          _userPasswordController.text
                                                              .trim())
                                                  .whenComplete(
                                                    () => error = error,
                                                  )
                                                  .then((value) => setState(
                                                        () {
                                                          error = error;
                                                          _userEmailValidController =
                                                              false;
                                                          _userPasswordValidController =
                                                              false;
                                                          passwordValidate = false;
                                                          _userEmailController
                                                              .clear();
                                                          _userPasswordController
                                                              .clear();
                                                          _userRepeatPasswordController
                                                              .clear();
                                                          exists = false;
                                                          wrongData = false;
                                                          if (error !=
                                                              'The given email is in use') {
                                                            data = "Go to home page";
                                                          } else {
                                                            data =
                                                                "Go back to login page";
                                                          }
                                                        },
                                                      )),
                                            }
                                          else
                                            {
                                              error = newError,
                                              _userEmailController.clear(),
                                              _userPasswordController.clear(),
                                              _userRepeatPasswordController.clear(),
                                            },
                                        }),
                                Future.delayed(
                                  const Duration(milliseconds: 1500),
                                  () => {
                                    setState(() {
                                      wrongData = true;
                                      visibility = false;
                                      error = error;
                                    })
                                  },
                                ),
                              }, child: Text("Regisztráció"),
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
                                "Már van fiókja?",
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
                                          builder: (context) => LoginPage()));
                                    })
                                  },
                                ),
                              },
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
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
            ),

        ),
    );
  }
}
