import 'package:dalel/core/functions/app_functions.dart';
import 'package:dalel/core/routers/app_routers.dart';
import 'package:dalel/core/widget/custom_button.dart';
import 'package:dalel/core/widget/custtom_text_gestureDetector.dart';
import 'package:dalel/features/onBording/data/models/on_bording.dart';
import 'package:flutter/material.dart';

class CustomGetButton extends StatelessWidget {
  const CustomGetButton(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBordingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            onPressed: () {
              customNavigatorpushReplacement(context, AppRouters().SignUpView);
            },
            text: "Create Account",
          ),
          const SizedBox(
            height: 10,
          ),
          CusttomTextGestureDetector(
            onTap: () {
              customNavigatorpushReplacement(context, AppRouters().SignInView);
            },
            text: "Login Now",
          ),
        ],
      );
    } else {
      return CustomButton(
        text: 'Next',
        onPressed: () {
          controller.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.bounceIn);
        },
      );
    }
  }
}
