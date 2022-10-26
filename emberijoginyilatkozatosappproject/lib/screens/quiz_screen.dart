import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:emberijoginyilatkozatosappproject/controllers/questioncontroller.dart';
import 'package:emberijoginyilatkozatosappproject/screens/components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Color.fromRGBO(105, 72, 115, 1),
        elevation: 0,
        actions: [
          Padding(padding: EdgeInsets.all(10.0),
              child:
              FloatingActionButton(
                  onPressed:  _controller.nextQuestion, child: Text("Skip")
              )
          ),
        ],
      ),
      body: Body(),
    );
  }
}
