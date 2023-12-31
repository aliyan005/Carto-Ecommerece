import 'package:ecommerece/features/authentication/screens/signup/widgets/T&C.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class signupForm extends StatelessWidget {
  const signupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            //first name
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: EText.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: ESizes.spaceBtwInputField,
            ),
            //last name
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: EText.lastName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputField,
        ),
    
        //username
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: EText.username,
              prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputField,
        ),
    
        //email
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: EText.email,
              prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputField,
        ),
    
        //phone number
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: EText.phoneNo,
              prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputField,
        ),
    
        //password
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: EText.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputField,
        ),
    
        TandC(dark: dark),
        const SizedBox(
          height: ESizes.spaceBtwSection,
        ),
    
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {},
              child: const Text(EText.createAccount)),
        )
      ],
    ));
  }
}

