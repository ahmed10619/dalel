import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.text, this.onChanged, this.onFieldSubmitted});
  final String text;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 32),
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          labelText: text,
          labelStyle: CustomTextStyle.Poppins400Style16.copyWith(
              color: const Color(0xff6F6460), fontSize: 12),
          border: getDecoratinTextField(),
          enabledBorder: getDecoratinTextField(),
          focusedBorder: getDecoratinTextField(),
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
