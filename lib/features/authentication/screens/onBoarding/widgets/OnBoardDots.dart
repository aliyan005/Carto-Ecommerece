import 'package:ecommerece/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerece/utils/constants/colors.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/device/device_utility.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instanse;
    final dark = EHelper.isDarkMode(context);
    return Positioned(
        bottom: EdeviceUtils.getBottomNavbarHeight() + 25,
        left: ESizes.defaultSpace,
        child: SmoothPageIndicator(
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          effect: ExpandingDotsEffect(
            activeDotColor: dark ? Ecolors.ligth : Ecolors.black,
            dotHeight: 6,
          ),
        ));
  }
}
