import 'package:ecommerece/utils/constants/colors.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/device/device_utility.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ESearchContainer extends StatelessWidget {
  const ESearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = EHelper.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace),
        child: Container(
          width: EdeviceUtils.getScreenWidth(),
          padding: const EdgeInsets.all(ESizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? Ecolors.dark
                      : Ecolors.lightGrey
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(ESizes.cardRadiusLg),
              border: showBorder ? Border.all(color: Ecolors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: Ecolors.grey,
              ),
              const SizedBox(
                width: ESizes.spaceBtwItem,
              ),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: Ecolors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
