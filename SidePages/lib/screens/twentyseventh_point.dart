import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:side_pages/screens/thirtieth_point.dart';
import 'package:side_pages/screens/twentyfourth_point.dart';

class TwentyseventhPoint extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff694873),
        centerTitle: true,
        title: Text('Attila',
          style: GoogleFonts.inter(color: Color(0xffd9d9d9)),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TwentyfourthPoint()));
          }, icon: Icon(Icons.arrow_back, color: Color(0xffd9d9d9))),
          Padding(padding: EdgeInsets.only(right: 20)),
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThirtiethPoint()));
          }, icon: Icon(Icons.arrow_forward, color: Color(0xffd9d9d9))),
          Padding(padding: EdgeInsets.only(right: 15),)
        ],
      ),
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
                    "27. cikk - A 'Copyright' joga",
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
                      height: 140,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "1. Minden személynek joga van a közösség kulturális életében való szabad részvételhez, a művészetek élvezéséhez, valamint a tudomány haladásában és az abból származó jótéteményekben való részvételhez.",
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
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  Card(
                    color: Color(0xff7F7CAF),
                    child: SizedBox(
                      width: 300,
                      height: 130,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "2. Mindenkinek joga van minden általa alkotott tudományos, irodalmi és művészeti termékkel kapcsolatos erkölcsi és anyagi érdekeinek védelméhez.",
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
                      height: 130,
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            "Azért választottuk ezt a cikket, mert sokat számít az, hogy az általunk készített munkával (legyen az zene, írott program vagy weblap, vagy általunk készített kép) más ne éljen vissza.",
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
                          child: Image.asset('assets/image/27.jpg'),
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
                                Icon(
                                    color: Color(0xffd9d9d9),
                                    IconData(0xe198, fontFamily: 'MaterialIcons')
                                ),
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
}
