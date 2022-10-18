import 'package:flutter/material.dart';

class ThirdPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff694873),
        centerTitle: true,
        title: const Text('Attila'),
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
                shadowColor: Colors.black,
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
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
