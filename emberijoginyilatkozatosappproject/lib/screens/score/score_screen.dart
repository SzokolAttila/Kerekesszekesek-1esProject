import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:emberijoginyilatkozatosappproject/constants/constants.dart';
import 'package:emberijoginyilatkozatosappproject/controllers/questioncontroller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:emberijoginyilatkozatosappproject/screens/navigation/navbar.dart';
class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
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
      body: Stack(
        fit: StackFit.expand,
        children: [

          SvgPicture.asset("lib/assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Pontszám",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
