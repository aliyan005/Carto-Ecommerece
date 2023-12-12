import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class OnboardPage extends StatelessWidget {
  const OnboardPage({
    super.key,
    required this.image, 
    required this.title,
    required this.subtitle, 
    
  });
  final String image,title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ESizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: EHelper.screenwidth() * 0.8,
            height: EHelper.screenHeight() * 0.6,
            image: AssetImage(image)),
            Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox( height: ESizes.spaceBtwItem,),
            Text(subtitle,style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}