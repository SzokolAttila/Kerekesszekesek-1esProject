import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:emberijoginyilatkozatosappproject/controllers/questioncontroller.dart';
import 'package:emberijoginyilatkozatosappproject/models/questions.dart';

import 'package:emberijoginyilatkozatosappproject/constants/constants.dart';
import 'package:emberijoginyilatkozatosappproject/screens/components/option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    // it means we have to pass this
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0, bottom: 10.0),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: kBlackColor),
          ),
          SizedBox(height: kDefaultPadding / 3),
          ...List.generate(
            question.options.length,
                (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
