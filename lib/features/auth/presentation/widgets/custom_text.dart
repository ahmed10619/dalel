import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: CustomTextStyle.Poppins600Style28,
      ),
    );
  }
}
