import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widget/custtom_text_gestureDetector.dart';
import 'package:flutter/material.dart';

class CustomForgetPassword extends StatelessWidget {
  const CustomForgetPassword({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return CusttomTextGestureDetector(
      onTap: onTap,
      text: AppStrings.forgotPassword,
      color: const Color(0xff6F6460),
    );
  }
}
