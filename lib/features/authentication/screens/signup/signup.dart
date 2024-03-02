import 'package:ecommerece/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerece/common/widgets/login_signup/social_icon.dart';
import 'package:ecommerece/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelper.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                EText.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSection,
              ),
              SignupForm(dark: dark),
              const SizedBox(
                height: ESizes.spaceBtwSection,
              ),
              //divider
              FormDivider(
                  dark: dark, dividertext: EText.orSignUpWith.capitalize!),
              const SizedBox(
                height: ESizes.spaceBtwSection,
              ),

              //footer
              const SocialButtons(),
              const SizedBox(
                height: ESizes.spaceBtwSection,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
