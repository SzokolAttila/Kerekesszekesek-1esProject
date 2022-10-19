import 'package:flutter/material.dart';

class ThirdPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff694873),
        centerTitle: true,
        title: const Text('Attila',
          style: TextStyle(color: Color(0xffd9d9d9)),
        ),

      ),
      body: SafeArea(
      child: Container(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 24.0
              )),
              Text(
                  "3. pont - Az élet joga",
                textAlign: TextAlign.center,
                textScaleFactor: 2.0,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              Card(
                color: Color(0xffD9D9D9),
                child: SizedBox(
                  width: 300,
                  height: 120,
                  child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                    "Minden személynek joga van az élethez, a szabadsághoz és a személyi biztonsághoz.",
                    textAlign: TextAlign.center,
                    textScaleFactor: 1.1,
                      style: TextStyle(fontStyle: FontStyle.italic),
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
                textAlign: TextAlign.center,
                textScaleFactor: 2.0,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              Card(
                color: Color(0xffD9D9D9),
                child: SizedBox(
                  width: 300,
                  height: 120,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Azért választottuk ezt a jogot, mert ez az egyik legalapvetőbb jog, ",
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.1,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ),
                elevation: 20,
                shadowColor: Color(0xff7F7CAF),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              Padding(padding: EdgeInsets.only(
                top: 155
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
                      style: TextStyle(color: Color(0xffD9d9d9)),
                      ),
                      ]
                    )
                  )
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
