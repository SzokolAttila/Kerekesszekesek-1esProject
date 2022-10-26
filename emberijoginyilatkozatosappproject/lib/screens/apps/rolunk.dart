import 'package:flutter/material.dart';
import 'package:emberijoginyilatkozatosappproject/constants/constants.dart';
import 'package:emberijoginyilatkozatosappproject/screens/navigation/navbar.dart';
import 'package:emberijoginyilatkozatosappproject/screens/apps/home.dart';
import 'package:emberijoginyilatkozatosappproject/screens/other/profile_lukacsiadrian.dart';
import 'package:emberijoginyilatkozatosappproject/screens/other/profile_magyardavid.dart';
import 'package:emberijoginyilatkozatosappproject/screens/other/profile_szokolattila.dart';


// ignore: use_key_in_widget_constructors
class RolunkScreen extends StatefulWidget {
  @override
  _RolunkScreenState createState() => _RolunkScreenState();
}

class _RolunkScreenState extends State<RolunkScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => FocusScope.of(context).unfocus(),
    child: Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text(
          "Rólunk",
          style:
          TextStyle(color: bodyTextColor, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Container(
                padding: const EdgeInsets.only(top: 20),
                color: bgColor,
                child: Center(
                  child: Column(
                    children: [

                      Padding(
                        padding:
                        const EdgeInsets.only(top: 40, left: 20, right: 20),
                        child: Wrap(
                          spacing: 10,
                          runSpacing: 20,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 16,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProfileDavidScreen(),)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Stack( alignment: Alignment.bottomLeft,
                                        children: [
                                          Image.asset("lib/assets/images/me.png", height: 200, fit: BoxFit.fitWidth,)
                                        ],),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 16, top:16, right: 16, bottom: 16),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:<Widget> [
                                            Text("Magyar Dávid",
                                              style: TextStyle(color: Colors.black),),
                                            Text(""

                                            ),
                                            Text("Tudj meg rólam többet!")

                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 16,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                child: InkWell(
                                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ProfileAdrianScreen(),)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Stack( alignment: Alignment.bottomLeft,
                                        children: [
                                          Image.asset("lib/assets/images/adrian.png", height: 200, fit: BoxFit.fitWidth,)
                                        ],),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 16, top:16, right: 16, bottom: 16),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:<Widget> [
                                            Text("Lukácsi Adrián",
                                              style: TextStyle(color: Colors.black),),
                                            Text(
                                                ""
                                            ),
                                            Text("Tudj meg rólam többet!")

                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 16,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                child: InkWell(
                                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ProfileAttilaScreen(),)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Stack( alignment: Alignment.bottomLeft,
                                        children: [
                                          Image.asset("lib/assets/images/attila.png", height: 200, fit: BoxFit.fitWidth,)
                                        ],),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 16, top:16, right: 16, bottom: 16),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:<Widget> [
                                            Text("Szokol Attila",
                                              style: TextStyle(color: Colors.black),),
                                            Text(
                                                ""
                                            ),
                                            Text("Tudj meg rólam többet!")

                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                            ),


            ],)
                      )






                    ],
                  ),
                )
            ),
          ]),
        ),
      ),
    ),
  );
}
