import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:emberijoginyilatkozatosappproject/controllers/questioncontroller.dart';
import 'package:flutter_svg/svg.dart';

import 'package:emberijoginyilatkozatosappproject/constants/constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(


      padding: const EdgeInsets.all(10.0),
      child: Container(

        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF3F4768), width: 3),
          borderRadius: BorderRadius.circular(50),
        ),
        child: GetBuilder<QuestionController>(

          init: QuestionController(),
          builder: (controller) {
            return Stack(


              children: [
                // LayoutBuilder provide us the available space for the conatiner
                // constraints.maxWidth needed for our animation
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    // from 0 to 1 it takes 60s
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${(controller.animation.value * 20).round()} sec"),
                        Column(mainAxisAlignment: MainAxisAlignment.start,

                          children: [
                            Padding(padding: EdgeInsets.only(top:4.5),child: SvgPicture.asset("lib/assets/icons/clock.svg"), )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
