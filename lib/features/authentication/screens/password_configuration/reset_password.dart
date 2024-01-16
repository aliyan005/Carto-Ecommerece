import 'package:ecommerece/utils/constants/image_string.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               //image
                Image(
                  image: const AssetImage(EImage.deliveredEmailIllstration),
                  width: EHelper.screenwidth() * 0.6,
                ),
        
                //title & subtitle
                const SizedBox(height: ESizes.spaceBtwSection,),
                Text(EText.changeYourPasswordTitle , style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                const SizedBox(height: ESizes.spaceBtwItem,),
                Text(EText.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelSmall , textAlign: TextAlign.center,),
                const SizedBox(height: ESizes.spaceBtwSection,),
        
                //button
                SizedBox( width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text(EText.eDone)),),
                const SizedBox( height: ESizes.spaceBtwItem,),
                SizedBox( width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(EText.resendEmail)),),
            ],
          ),
        ),
      ),
    );
  }
}