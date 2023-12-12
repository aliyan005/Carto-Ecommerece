import 'package:ecommerece/utils/theme/customtheme/elevated_button_theme.dart';
import 'package:ecommerece/utils/theme/customtheme/appbartheme.dart';
import 'package:ecommerece/utils/theme/customtheme/bottomsheet_theme.dart';
import 'package:ecommerece/utils/theme/customtheme/checkbox_theme.dart';
import 'package:ecommerece/utils/theme/customtheme/chip_theme.dart';
import 'package:ecommerece/utils/theme/customtheme/outlined_button.dart';
import 'package:ecommerece/utils/theme/customtheme/text_field_theme.dart';
import 'package:ecommerece/utils/theme/customtheme/text_theme.dart';
import 'package:flutter/material.dart';



class Eapptheme{
  Eapptheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    primaryColor: Colors.blue[300],
    textTheme: EtextTheme.lightTextTheme,
    chipTheme: EchipTheme.lightChipTheme,
    appBarTheme: EappbarTheme.ligthAppBarTheme,
    checkboxTheme: EcheckboxTheme.lightCheckboxtheme,
    bottomSheetTheme: EbottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: EelevatedbuttonTheme.lightElebtn,
    outlinedButtonTheme: EoutlinedButtonTheme.lightOutlinedBorderTheme,
    inputDecorationTheme: EtextFormFieldTheme.lightInputDecorationTheme
  );



  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFF222222),
    primaryColor: Colors.blue[300],
    textTheme: EtextTheme.darkTextTheme,
    chipTheme: EchipTheme.darkChipTheme,
    appBarTheme: EappbarTheme.darkAppBarTheme,
    checkboxTheme: EcheckboxTheme.darkCheckboxtheme,
    bottomSheetTheme: EbottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: EelevatedbuttonTheme.darkElebtn,
    outlinedButtonTheme: EoutlinedButtonTheme.darkOutlinedBorderTheme,
    inputDecorationTheme: EtextFormFieldTheme.darkInputDecorationTheme,
  );
}