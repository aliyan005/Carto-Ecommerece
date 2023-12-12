import 'package:ecommerece/common/styles/spacing_style.dart';
import 'package:ecommerece/utils/constants/image_string.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage( dark? EImage.appLogoLight : EImage.appLogoDark)),
                    Text(EText.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: ESizes.sm,),
                    Text(EText.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              //form
              Form(child: Column(
                children: [
                  //Email
                  TextFormField(
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: EText.email,),
                  ),
                  const SizedBox(height: ESizes.spaceBtwInputField,),
                  //Password 
                  TextFormField(
                    decoration: const InputDecoration(prefixIcon: Icon(Iconsax.password_check),labelText: EText.password, suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  const SizedBox(height: ESizes.spaceBtwInputField / 2),
                  //Remember me & Forgot Password
                  Row(
                    children: [
                      //remember me
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (Value){}),
                          const Text(EText.rememberMe,),
                        ],
                      ),
                      //Forget Password
                      TextButton(onPressed: (){}, child: const Text(EText.forgotPassword))
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwSection,),

                  SizedBox(width: double.infinity,  child: ElevatedButton(onPressed: (){}, child: const Text(EText.signIn))),

                  SizedBox(width: double.infinity,  child: OutlinedButton(onPressed: (){}, child: const Text(EText.createAccount))),


                ],
              ))
            ],
          ),
          ),
      ),
    );
  }
}