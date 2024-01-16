import 'package:ecommerece/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EoutlinedButtonTheme{
  EoutlinedButtonTheme._();

  static final lightOutlinedBorderTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Ecolors.primary,
      side: const BorderSide(color: Ecolors.primary),
      textStyle: const TextStyle(fontSize: 16,color: Ecolors.primary,fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );

  static final darkOutlinedBorderTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Ecolors.primary),
      textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );
}