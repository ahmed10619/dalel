import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyle {
  static final Pacifico400Style64 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
    fontFamily: "Pacifico",
  );

  static const Poppins400Style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    fontFamily: "Poppins",
  );
  static const Poppins600Style28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    fontFamily: "Poppins",
  );
  static final Poppins300Style14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
    fontFamily: "Poppins",
  );
  static const Poppins500Style22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: "Poppins",
  );
  static const Poppins400Style10 = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: Color(0xff6F6460),
    fontFamily: "Poppins",
  );
}
