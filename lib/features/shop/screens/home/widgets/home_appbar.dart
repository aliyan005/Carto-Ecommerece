import 'package:ecommerece/common/widgets/appbar/appbar.dart';
import 'package:ecommerece/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerece/utils/constants/colors.dart';
import 'package:ecommerece/utils/constants/text_string.dart';
import 'package:flutter/material.dart';

class EHomeAppBar extends StatelessWidget {
  const EHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(EText.homeAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: Ecolors.grey)),
          Text(EText.homeAppBarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: Ecolors.white)),
        ],
      ),
      actions: [
        ECartCounterIcon(
          onPressed: () {},
          iconColor: Ecolors.white,
        )
      ],
    );
  }
}
