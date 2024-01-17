import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:ecommerece/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class EAppBar extends StatelessWidget implements PreferredSizeWidget{
  const EAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.symmetric(horizontal: ESizes.md));
  }
  
  @override
  Size get preferredSize => Size.fromHeight(EdeviceUtils.getAppBarHeight());
}