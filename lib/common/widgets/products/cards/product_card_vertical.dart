import 'package:ecommerece/common/styles/shadows.dart';
import 'package:ecommerece/common/widgets/custom_shapes/containers/custom_circle.dart';
import 'package:ecommerece/utils/constants/colors.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class EProductCardVertical extends StatelessWidget {
  const EProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelper.isDarkMode(context);

    return Container(     
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticallProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: dark ? Ecolors.darkGrey : Ecolors.white),
      child: Column(
        children: [
          // section 1 (image, wishlist button, discount badge)
          CustomShape(
            height: 180,
            padding: const EdgeInsets.all(ESizes.sm),
            radius: 180,
            color: dark ? Ecolors.dark : Ecolors.light,
          )
          // section 2 (prosuct details, add to cart button)
        ],
      ),
    );
  }
}
