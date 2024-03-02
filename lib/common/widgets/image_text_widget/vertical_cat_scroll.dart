import 'package:ecommerece/utils/constants/colors.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class EvertscrollCat extends StatelessWidget {
  const EvertscrollCat({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Ecolors.white,
    this.backgroundColor = Ecolors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EHelper.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ESizes.spaceBtwItem),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(ESizes.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? Ecolors.black : Ecolors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? Ecolors.light : Ecolors.black,
                ),
              ),
            ),
            const SizedBox(
              height: ESizes.spaceBtwItem / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
