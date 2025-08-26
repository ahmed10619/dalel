import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CusttomTextGestureDetector extends StatelessWidget {
  const CusttomTextGestureDetector(
      {super.key, required this.onTap, required this.text});
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
