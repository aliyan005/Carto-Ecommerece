import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class EAppBar extends StatelessWidget implements PreferredSizeWidget {
  const EAppBar(
      {super.key,
      this.title,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed,
      this.showBackArrow = false});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ESizes.md),
      child: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(EdeviceUtils.getAppBarHeight());
}
