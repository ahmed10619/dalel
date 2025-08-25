import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color});
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: CustomTextStyle.Poppins500Style22.copyWith(
            color: color ?? AppColors.offWhite,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
