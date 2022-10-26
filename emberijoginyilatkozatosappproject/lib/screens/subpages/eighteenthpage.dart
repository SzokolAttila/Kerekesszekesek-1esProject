import 'package:flutter/material.dart';
import 'package:emberijoginyilatkozatosappproject/constants/constants.dart';
import 'package:emberijoginyilatkozatosappproject/main.dart';
import 'package:emberijoginyilatkozatosappproject/screens/navigation/navbar.dart';
import 'package:emberijoginyilatkozatosappproject/screens/apps/rolunk.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class Subpage18Screen extends StatefulWidget {
  @override
  _Subpage18ScreenState createState() => _Subpage18ScreenState();
}

class _Subpage18ScreenState extends State<Subpage18Screen> {
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
        backgroundColor: bgColor,
        body: SafeArea(
          child: Container(
            child: ListView(
                children: [Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(
                        horizontal: 32.0,
                        vertical: 24.0
                    )),
                    Text(
                      "18. cikk - A szabad vallás joga",
                      style: GoogleFonts.kottaOne(color: Color(0xffd9d9d9)),
                      textAlign: TextAlign.center,
                      textScaleFactor: 2.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    Card(
                      color: Color(0xff7F7CAF),
                      child: SizedBox(
                        width: 300,
                        height: 240,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Minden személynek joga van a gondolat, a lelkiismeret és a vallás szabadságához, ez a jog magában foglalja a vallás és a meggyőződés megváltoztatásának szabadságát, valamint a vallásnak vagy a meggyőződésnek mind egyénileg, mind együttesen, mind a nyilvánosság előtt, mind a magánéletben oktatás, gyakorlás és szertartások végzése útján való kifejezésre juttatásának jogát.",
                              textAlign: TextAlign.center,
                              textScaleFactor: 1.1,
                              style: GoogleFonts.kottaOne(fontStyle: FontStyle.italic,
                                  color: Color(0xffD9D9D9)),
                            ),
                          ),
                        ),
                      ),
                      elevation: 20,
                      shadowColor: Color(0xff7F7CAF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Padding(padding: EdgeInsets.symmetric(
                        horizontal: 32.0,
                        vertical: 24.0
                    )),
                    Text(
                      "Miért választottuk?",
                      style: GoogleFonts.kottaOne(color: Color(0xffd9d9d9)),
                      textAlign: TextAlign.center,
                      textScaleFactor: 2.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    Card(
                      color: Color(0xff7F7CAF),
                      child: SizedBox(
                        width: 300,
                        height: 150,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Azért választottuk ezt a cikket, mert minden ember megérdemli a szabad vallásgyakorlást, valamint hogy ezt félelem nélkül tegye meg. Fontos, hogy minden vallást elfogadjunk, és egyenlőnek tekintsünk.",
                              textAlign: TextAlign.center,
                              textScaleFactor: 1.1,
                              style: GoogleFonts.kottaOne(fontStyle: FontStyle.italic,
                                  color: Color(0xffD9D9D9)),
                            ),
                          ),
                        ),
                      ),
                      elevation: 20,
                      shadowColor: Color(0xff7F7CAF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: 40
                      ),
                    ),
                    Card(
                      child: SizedBox(
                        width: 300,
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('lib/assets/images/18.png'),
                          ),
                        ),
                      ),
                      elevation: 20,
                      shadowColor: Color(0xff7F7CAF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    Padding(padding: EdgeInsets.only(
                        top: 20
                    ),
                    ),
                    Container(
                        width: double.infinity,
                        height: 40,
                        color: Color(0xff694873),
                        child: Center(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: 10
                                    ),
                                  ),
                                  Text(
                                    "Copyright 2022 Kerekesszékesek",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(color: Color(0xffD9d9d9)),
                                  ),
                                ]
                            )
                        )
                    )
                  ],
                ),]
            ),
          ),
        ),


      );
}