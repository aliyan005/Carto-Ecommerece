import 'package:ecommerece/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomShape extends StatelessWidget {
  const CustomShape({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.color = Ecolors.white,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Ecolors.textWhite.withOpacity(0.1),
      ),
      child: child,
    );
  }
}
