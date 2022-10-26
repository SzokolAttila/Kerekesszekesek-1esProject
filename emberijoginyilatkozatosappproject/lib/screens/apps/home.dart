import 'package:emberijoginyilatkozatosappproject/screens/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:emberijoginyilatkozatosappproject/constants/constants.dart';
import 'package:emberijoginyilatkozatosappproject/main.dart';
import 'package:emberijoginyilatkozatosappproject/screens/navigation/navbar.dart';
import 'package:emberijoginyilatkozatosappproject/screens/apps/rolunk.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:emberijoginyilatkozatosappproject/screens/subpages/nineteenthpage.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text(
            "Köszöntjük az Applikációban!",
            style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

          ),
          backgroundColor: Color.fromRGBO(105, 72, 115, 1),
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Colors.black12,
        body:

        SafeArea(

          child: Center(

            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF7F7CAF),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.only(top: 5.0),

                width: MediaQuery.of(context).size.width * 0.80,
                height: MediaQuery.of(context).size.height * 0.9,
                child: SingleChildScrollView(


                  child: Center(
                    child: Column(
                      children:[

                        Padding(
                            padding: EdgeInsets.only(top: 50, left: 50, right: 50),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Emberi Jogok Nyilatkozata',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22

                              ),
                            ),
                          )
                        ),
                        Wrap(
                          spacing: 10,
                          runSpacing: 20,

                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                                padding:
                                const EdgeInsets.only(top: 30, left: 20, right: 20 ,bottom: 30),
                                child: Container(
                                  height:320,
                                  width: 350,

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),

                                  ),



                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(

                                          child: Center(
                                            child: Padding(padding: EdgeInsets.all(18.0),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child:  Text(
                                                  "Az emberi jogok egyetemes nyilatkozata egy, az ENSZ által elfogadott nyilatkozat, mely összefoglalja a világszervezet álláspontját a minden embert megillető alapvető jogokról. A nyilatkozatot a második világháború borzalmai ihlették és 1948. december 10-én fogadták el. Az ENSZ-közgyűlés 1950-ben hozott döntése értelmében a nyilatkozat elfogadásának napját minden évben az emberi jogok napjaként ünneplik.",style: TextStyle(
                                                    color: Color(0xFF7F7CAF),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18
                                                ),
                                                ),
                                              ),
                                            ),

                                          ),

                                        ),




                                      ],




                                    ),

                                )
                            ),
                            Padding(
                                padding:
                                const EdgeInsets.only(top: 30, left: 30, right: 20 ,bottom: 20),
                                child: Container(
                                  height:320,
                                  width: 350,

                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),

                                  ),
                                  child: Card( child: Image.asset('lib/assets/images/emberi1.png', fit: BoxFit.cover, ), ),
                                )
                            ),

                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 50, left: 50, right: 50),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Története',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22

                                ),
                              ),
                            )
                        ),
                        Wrap(
                          spacing: 10,
                          runSpacing: 20,

                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                                padding:
                                const EdgeInsets.only(top: 30, left: 20, right: 20 ,bottom: 30),
                                child: Container(
                                  height:320,
                                  width: 350,

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),

                                  ),



                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(

                                        child: Center(
                                          child: Padding(padding: EdgeInsets.all(18.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child:  Text(
                                                  "A nyilatkozatot John Peters Humphrey kanadai jogász és emberjogi aktivista szövegezte meg az ENSZ kérésére, többek között Eleanor Roosevelt egyesült államokbeli First Lady, René Cassin francia bíró, Charles Malik libanoni diplomata és P. C. Chang kínai professzor segítségével. Az ENSZ Közgyűlése egyhangúlag megszavazta, de nyolc ország – a szovjet blokk és Szaúd-Arábia – tartózkodott a szavazástól.",style: TextStyle(
                                                  color: Color(0xFF7F7CAF),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18
                                              ),
                                              ),
                                            ),
                                          ),

                                        ),

                                      ),




                                    ],




                                  ),

                                )
                            ),
                            Padding(
                                padding:
                                const EdgeInsets.only(top: 30, left: 30, right: 20 ,bottom: 20),
                                child: Container(
                                  height:320,
                                  width: 350,

                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),

                                  ),
                                  child: Card( child: Image.asset('lib/assets/images/emberi2.png', fit: BoxFit.cover, ), ),
                                )
                            ),

                          ],
                        ),


                        Container(

                          child: Padding(
                            padding:
                            const EdgeInsets.only(top: 50, left: 50, right: 50, bottom: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [


                                    MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () => Navigator.of(context).push(MaterialPageRoute(
                                          builder: (context) => Rolunk(),)),
                                        child: Container(
                                          height:100,
                                          width: 250,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                            
                                          ),
                                          child: Center(
                                            child: Padding(padding: EdgeInsets.all(18.0),
                                              child: Align(
                                                alignment: Alignment.center,
                                                child:  InkWell(
                                                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                                                    builder: (context) => QuizScreen(),)),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 50,
                                                        width: 200,
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(25),
                                                          color: Color.fromRGBO(105, 72, 115, 1),
                                                        ),
                                                        child:Center(
                                                          child: Text(
                                                            "Teszt indítása",
                                                            style: TextStyle(
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 20,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ),
                                            ),

                                          ),

                                        ),
                                      ),
                                    ),

                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),



                ])

                  ),
                ),
              ),
            ),
          ),
        ),
      );
}