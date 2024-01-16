import 'package:ecommerece/features/shop/screens/home/home.dart';
import 'package:ecommerece/utils/constants/colors.dart';
import 'package:ecommerece/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = EHelper.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          color: dark ? Ecolors.white : Ecolors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GNav(
              gap: 4,
              tabBorderRadius: 30,
              tabActiveBorder: Border.all(color: Colors.black, width: 1),
              padding: const EdgeInsets.all(16),
              backgroundColor: dark ? Ecolors.black : Ecolors.white,
              selectedIndex: controller.selectedIndex.value,
              onTabChange: (index) => controller.selectedIndex.value = index,
              tabs: const [
                GButton(
                  icon: Iconsax.home,
                  text: "Home",
                  textColor: Colors.black,
                ),
                GButton(
                  icon: Iconsax.shop,
                  text: "Store",
                  textColor: Colors.black,
                ),
                GButton(
                  icon: Iconsax.heart,
                  text: "Wishlist",
                  textColor: Colors.black,
                ),
                GButton(
                  icon: Iconsax.user,
                  text: "Profile",
                  textColor: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    )
  ];
}
