import 'package:ecommerece/common/widgets/success%20screen/success_screen.dart';
import 'package:ecommerece/features/authentication/screens/login/login.dart';
import 'package:ecommerece/utils/constants/image_string.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class verifyEmailScreen extends StatelessWidget {
  const verifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const loginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: const AssetImage(EImage.verifyEmailIllstration),
                width: EHelper.screenwidth() * 0.6,
              ),

              //title & subtitle
              const SizedBox(
                height: ESizes.spaceBtwSection,
              ),
              Text(
                EText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItem,
              ),
              Text(
                "aliyanahmed853@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItem,
              ),
              Text(
                EText.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSection,
              ),

              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(
                          () => SuccessScreen(
                            image: EImage.staticSuccessIllstration,
                            title: EText.successMessageSubTitle,
                            subtitle: EText.successMessage,
                            onPressed: () => Get.to(() => const loginScreen()),
                          ),
                        ),
                    child: const Text(EText.eContinue)),
              ),
              const SizedBox(
                height: ESizes.spaceBtwItem,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(EText.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
