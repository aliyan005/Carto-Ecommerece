import 'package:ecommerece/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: EdeviceUtils.getAppBarHeight(), right: ESizes.defaultSpace, child: TextButton(onPressed: ()=> OnBoardingController.instanse.skipPage(), child: const Text("Skip")));
  }
}