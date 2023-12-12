import 'package:ecommerece/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerece/features/authentication/screens/onBoarding/widgets/OnBoardDots.dart';
import 'package:ecommerece/features/authentication/screens/onBoarding/widgets/OnBoardingNext.dart';
import 'package:ecommerece/features/authentication/screens/onBoarding/widgets/OnBoarding_page.dart';
import 'package:ecommerece/features/authentication/screens/onBoarding/widgets/onBoarding_Skip.dart';
import 'package:ecommerece/utils/constants/image_string.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
        body: Stack(
          children: [
            //horizontal scrolling pages
              PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: const [
                  OnboardPage(image: EImage.onboardingImage1,title: EText.onboardingTitle1,subtitle: EText.onboardingSubTitle1,),
                  OnboardPage(image: EImage.onboardingImage2,title: EText.onboardingTitle2,subtitle: EText.onboardingSubTitle2,),
                  OnboardPage(image: EImage.onboardingImage3,title: EText.onboardingTitle3,subtitle: EText.onboardingSubTitle3,),
                ],
              ),
            //Skip button
              const OnBoardSkip(),
            //Dot navigation Smoothpageindicator
              const OnBoardingDotNavigation(),
            //circular Button
              const OnBoardNext()

          ],
        ),
    );
  }
}


