import 'package:ecommerece/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({
    super.key,
    this.width = 0,
    this.height = 0,
    this.radius = 400,
    this.padding,
    this.child,
    this.color = Ecolors.darkContainer,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final EdgeInsets? padding;
  final Widget? child;
  final EdgeInsets? margin;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
