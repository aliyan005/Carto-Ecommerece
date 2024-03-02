import 'package:ecommerece/common/styles/spacing_style.dart';
import 'package:ecommerece/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerece/common/widgets/login_signup/social_icon.dart';
import 'package:ecommerece/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerece/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelper.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBar,
          child: Column(
            children: [
              //header
              LoginHeader(dark: dark),
              //form
              const LoginForm(),
              //divider
              FormDivider(
                dark: dark,
                dividertext: EText.orSignWith.capitalize!,
              ),

              const SizedBox(
                height: ESizes.spaceBtwSection,
              ),

              //footer
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
