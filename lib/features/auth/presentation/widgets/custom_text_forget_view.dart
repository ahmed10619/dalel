import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextForgetView extends StatelessWidget {
  const CustomTextForgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      textAlign: TextAlign.center,
      'Enter your registered email below to receive password reset instruction',
      style: CustomTextStyle.Poppins400Style16,
    );
  }
}
