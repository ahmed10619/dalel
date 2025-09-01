// import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/functions/app_functions.dart';
import 'package:dalel/core/routers/app_routers.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/constant.dart';
// import 'package:dalel/core/utils/constant.dart';
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
              getIt<CacheHelper>()
                  .saveData(key: Constant().onBoardingVisited, value: true);
              customNavigatorpushReplacement(context, AppRouters().SignUpView);
            },
            text: AppStrings.createAccount,
          ),
          const SizedBox(
            height: 10,
          ),
          CusttomTextGestureDetector(
            onTap: () {
              getIt<CacheHelper>()
                  .saveData(key: Constant().onBoardingVisited, value: true);
              customNavigatorpushReplacement(context, AppRouters().SignInView);
            },
            text: AppStrings.loginNow,
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
