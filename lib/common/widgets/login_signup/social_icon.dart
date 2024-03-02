import 'package:ecommerece/utils/constants/colors.dart';
import 'package:ecommerece/utils/constants/image_string.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Ecolors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: ESizes.iconMd,
                  height: ESizes.iconMd,
                  image: AssetImage(EImage.googleLogo))),
        ),
        const SizedBox(
          width: ESizes.spaceBtwItem,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Ecolors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: ESizes.iconMd,
                  height: ESizes.iconMd,
                  image: AssetImage(EImage.facebookLogo))),
        ),
      ],
    );
  }
}
