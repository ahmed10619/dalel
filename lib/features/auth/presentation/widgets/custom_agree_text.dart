import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class CustomAgreeText extends StatelessWidget {
  const CustomAgreeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(
          TextSpan(children: [
            const TextSpan(
              text: AppStrings.iHaveAgreeToOur,
              style: CustomTextStyle.Poppins400Style10,
            ),
            TextSpan(
              text: AppStrings.termsAndCondition,
              style: CustomTextStyle.Poppins400Style10.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
