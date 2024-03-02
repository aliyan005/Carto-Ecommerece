import 'package:ecommerece/utils/constants/colors.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class TandC extends StatelessWidget {
  const TandC({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: ESizes.spaceBtwItem,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: ' ${EText.iAgreeTo}  ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: EText.privacyPolicy,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                    color: dark ? Ecolors.dark : Ecolors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? Ecolors.dark : Ecolors.primary,
                  )),
          TextSpan(
              text: ' ${EText.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: EText.termOfUse,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                    color: dark ? Ecolors.dark : Ecolors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? Ecolors.dark : Ecolors.primary,
                  )),
        ]))
      ],
    );
  }
}
