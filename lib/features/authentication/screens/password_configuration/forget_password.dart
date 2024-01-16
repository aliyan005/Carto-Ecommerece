import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //heading
          Text(EText.forgotPassword, style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(height: ESizes.spaceBtwItem,),
          Text(EText.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: ESizes.spaceBtwSection * 2,),
          
          //text field 

          //submit button

        ],
      ),
      ),
    );
  }
}