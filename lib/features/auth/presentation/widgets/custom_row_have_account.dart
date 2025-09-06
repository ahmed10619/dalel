import 'package:dalel/core/utils/app_colors.dart';

import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:dalel/core/widget/custtom_text_gestureDetector.dart';
import 'package:flutter/material.dart';

class RowAlreadyHaveAccountOrNotWidget extends StatelessWidget {
  const RowAlreadyHaveAccountOrNotWidget(
      {super.key,
      required this.text,
      required this.textButton,
      required this.onTap});
  final String text;
  final String textButton;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: CustomTextStyle.Poppins400Style10,
        ),
        const SizedBox(
          width: 8,
        ),
        CusttomTextGestureDetector(
          onTap: onTap,
          text: textButton,
          color: AppColors.grey,
        )
      ],
    );
  }
}
