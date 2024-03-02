import 'package:ecommerece/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EShadowStyle {
  static final verticallProductShadow = BoxShadow(
      color: Ecolors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizotalProductShadow = BoxShadow(
      color: Ecolors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(2, 0));
}
