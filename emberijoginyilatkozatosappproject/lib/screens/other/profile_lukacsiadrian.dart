import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:emberijoginyilatkozatosappproject/constants/constants.dart';
import 'package:emberijoginyilatkozatosappproject/screens/navigation/navbar.dart';
import '../auth/login.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:emberijoginyilatkozatosappproject/screens/apps/rolunk.dart';
// ignore: use_key_in_widget_constructors
class ProfileAdrianScreen extends StatefulWidget {
  @override
  _ProfileAdrianScreenState createState() => _ProfileAdrianScreenState();
}

class _ProfileAdrianScreenState extends State<ProfileAdrianScreen> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      visibility = false;
      data2 = '';
    });
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text(
            "Alkotók",
            style: TextStyle(color: bodyTextColor, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromRGBO(105, 72, 115, 1),
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
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 75,
                      backgroundImage: AssetImage("lib/assets/images/adrian.png"),
                      backgroundColor: Color(0xFF1E1E28),
                    ),
                    const Text(
                      "Lukácsi Adrián",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: bodyTextColor,
                        fontSize: 30,
                        height: 2,
                      ),
                    ),
                    AnimatedTextKit(
                      pause: const Duration(seconds: 5),
                      repeatForever: true,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Junior Front-End Developer',
                          textStyle: const TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w300,
                            color: bodyTextColor,
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'lib/assets/images/flutter_icon.png',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Rólam',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic)),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Ország',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Magyarország',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Város',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Páty(falu)',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Kor',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '17',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Munka',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Szoftverfejlesztő / Tanuló',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 80, right: 80),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Telefonszám',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '+36702390254',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Képességek',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic)),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircularPercentIndicator(
                                center: const Text(
                                  '50%\nFlutter',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                radius: 50,
                                circularStrokeCap: CircularStrokeCap.round,
                                animation: true,
                                animationDuration: 3500,
                                percent: 0.5,
                                progressColor: Colors.purple,
                                lineWidth: 10.0,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              CircularPercentIndicator(
                                center: const Text(
                                  '60%\nC#',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                radius: 50,
                                circularStrokeCap: CircularStrokeCap.round,
                                animation: true,
                                animationDuration: 3500,
                                percent: 0.6,
                                progressColor: Colors.purple,
                                lineWidth: 10.0,
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircularPercentIndicator(
                                center: const Text(
                                  '70%\nJavaScript',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                radius: 50,
                                circularStrokeCap: CircularStrokeCap.round,
                                animation: true,
                                animationDuration: 3500,
                                percent: 0.7,
                                progressColor: Colors.red,
                                lineWidth: 10.0,
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              CircularPercentIndicator(
                                center: const Text(
                                  '90%\nCSS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                radius: 50,
                                circularStrokeCap: CircularStrokeCap.round,
                                animation: true,
                                animationDuration: 3500,
                                percent: 0.9,
                                progressColor: Colors.pink,
                                lineWidth: 10.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircularPercentIndicator(
                                center: const Text(
                                  '92%\nHTML',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                radius: 50,
                                circularStrokeCap: CircularStrokeCap.round,
                                animation: true,
                                animationDuration: 3500,
                                percent: 0.92,
                                progressColor: Colors.pink,
                                lineWidth: 10.0,
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              CircularPercentIndicator(
                                center: const Text(
                                  '75%\nPython',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                radius: 50,
                                circularStrokeCap: CircularStrokeCap.round,
                                animation: true,
                                animationDuration: 3500,
                                percent: 0.75,
                                progressColor: Colors.pink,
                                lineWidth: 10.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircularPercentIndicator(
                                center: const Text(
                                  '55%\nDart',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                radius: 50,
                                circularStrokeCap: CircularStrokeCap.round,
                                animation: true,
                                animationDuration: 3500,
                                percent: 0.55,
                                progressColor: Colors.green,
                                lineWidth: 10.0,
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              CircularPercentIndicator(
                                center: const Text(
                                  '40%\nMySQL',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                radius: 50,
                                circularStrokeCap: CircularStrokeCap.round,
                                animation: true,
                                animationDuration: 3500,
                                percent: 0.4,
                                progressColor: Colors.orange,
                                lineWidth: 10.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Tanult nyelvek',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 40, left: 40, right: 40),
                      child: Center(
                        child: LinearPercentIndicator(
                          alignment: MainAxisAlignment.center,
                          percent: 1,
                          animation: true,
                          animationDuration: 3500,
                          progressColor: Colors.lime,
                          barRadius: const Radius.circular(25),
                          width: 300,
                          lineHeight: 30,
                          center: const Text(
                            'Hungaryan (anyanyelv)',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 40, left: 40, right: 40),
                      child: Center(
                        child: LinearPercentIndicator(
                          alignment: MainAxisAlignment.center,
                          percent: 1,
                          animation: true,
                          animationDuration: 3500,
                          progressColor: Colors.indigo,
                          barRadius: const Radius.circular(25),
                          width: 300,
                          lineHeight: 30,
                          center: const Text(
                            'English (C1)',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Rólam pár gondolat',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40, left: 40, right: 40),
                      child: Center(
                        child: Text(
                          'Fiatal és ambiciózus szoftverfejlesztőként tekintek magamra! Szeretem elérni a céljaimat, legyen kicsi vagy nagy! És fontosnak tartom a csapatmunkát, szerintem egy projekt legnagyobb értéke a közös munka.',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w300),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Vedd fel velem a kapcsolatot',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 20, left: 30, right: 30),
                      child: Center(
                        widthFactor: 1,
                        heightFactor: 1,
                        child: IconButton(
                            alignment: Alignment.center,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.email,
                              size: 30,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    const Text(
                      'lukacsiadrian@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
