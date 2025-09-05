import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.text,
      this.onChanged,
      this.onFieldSubmitted,
      this.suffixIcon,
      this.obscureText});
  final String text;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 32),
      child: TextFormField(
        obscureText: obscureText ?? false,
        validator: (value) {
          if (value!.isEmpty) {
            return 'This Feild Is Required';
          } else {
            return null;
          }
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: CustomTextStyle.Poppins400Style16.copyWith(
              color: const Color(0xff6F6460), fontSize: 12),
          border: getDecoratinTextField(),
          enabledBorder: getDecoratinTextField(),
          focusedBorder: getDecoratinTextField(),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }

  OutlineInputBorder getDecoratinTextField() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: AppColors.grey,
        ));
  }
}
