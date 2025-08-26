import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.color,
    required this.onPressed,
  });
  final String text;
  final Color? color;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: CustomTextStyle.Poppins400Style16.copyWith(
          color: color,
        ),
      ),
    );
  }
}
