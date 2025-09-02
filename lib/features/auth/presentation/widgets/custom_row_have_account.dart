import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:dalel/core/widget/custtom_text_gestureDetector.dart';
import 'package:flutter/material.dart';

class RowAlreadyHaveAccountWidget extends StatelessWidget {
  const RowAlreadyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppStrings.alreadyHaveAnAccount,
          style: CustomTextStyle.Poppins400Style10,
        ),
        const SizedBox(
          width: 8,
        ),
        CusttomTextGestureDetector(
          onTap: () {},
          text: AppStrings.signIn,
          color: AppColors.grey,
        )
      ],
    );
  }
}
