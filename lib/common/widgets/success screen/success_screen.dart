import 'package:ecommerece/common/styles/spacing_style.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});
  
  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBar * 2,
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(image),
                width: EHelper.screenwidth() * 0.6,
              ),

              //title & subtitle
              const SizedBox(height: ESizes.spaceBtwSection,),
              Text(title , style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: ESizes.spaceBtwItem,),
              Text(subtitle, style: Theme.of(context).textTheme.labelSmall , textAlign: TextAlign.center,),
              const SizedBox(height: ESizes.spaceBtwSection,),

              //button
              SizedBox( width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text(EText.eContinue)),),
              const SizedBox( height: ESizes.spaceBtwItem,),
            ],
          ),
        ),
      ),
    );
  }
}