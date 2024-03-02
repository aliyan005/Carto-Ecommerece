import 'package:flutter/material.dart';

class Ecolors {
  Ecolors._();

  //APP BASIC COLOR
  static const Color primary = Color(0xFF4B68FF);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFB0C7FF);

  //GRADIENT COLOR
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0.707, -0.707),
    colors: 
      [
      Color(0xFFff9a9e),
      Color(0xFFfad0c4),
      Color(0xFFfad0c4),
      ]
    );

  //TEXT COLOR
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  //BACKGROUND COLOR
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackgound = Color(0xFFF3F5FF);

  //BACKGROUND CONTAINER COLOR
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color darkContainer = Color(0x0F272727);


  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttondisabled = Color(0xFFc4c4c4);

  static const Color borderPrimary = Color(0xFFd9d9d9);
  static const Color borderSecondary = Color(0x0Fe6e6e6);

  static const Color error = Color(0xFF4B68FF);
  static const Color success = Color(0xFFFFE24B);
  static const Color warning = Color(0xFFB0C7FF);
  static const Color info = Color(0xFFB0C7FF);

  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFFF4F4F4);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
