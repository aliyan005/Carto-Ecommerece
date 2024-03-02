import 'package:ecommerece/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerece/utils/constants/colors.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/device/device_utility.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardNext extends StatelessWidget {
  const OnBoardNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelper.isDarkMode(context);
    return Positioned(
        right: ESizes.defaultSpace,
        bottom: EdeviceUtils.getBottomNavbarHeight(),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? Ecolors.primary : Ecolors.black),
            onPressed: () => OnBoardingController.instanse.nextPage(),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}
