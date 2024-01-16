import 'package:ecommerece/bottom_navigation.dart';
import 'package:ecommerece/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerece/features/authentication/screens/signup/signup.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class loginForm extends StatelessWidget {
  const loginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSection),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: EText.email,
              ),
            ),
            const SizedBox(
              height: ESizes.spaceBtwInputField,
            ),
            //Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: EText.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: ESizes.spaceBtwInputField / 2),
            //Remember me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //remember me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (Value) {}),
                    const Text(
                      EText.rememberMe,
                    ),
                  ],
                ),
                //Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(EText.forgotPassword))
              ],
            ),
            const SizedBox(
              height: ESizes.spaceBtwSection,
            ),

            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const BottomNavigation()), child: const Text(EText.signIn))),
            const SizedBox(
              height: ESizes.spaceBtwItem,
            ),

            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(const signUpScreen()),
                    child: const Text(EText.createAccount))),
          ],
        ),
      ),
    );
  }
}
