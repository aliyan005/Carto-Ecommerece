import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerece/common/widgets/custom_shapes/containers/custom_circle.dart';
import 'package:ecommerece/common/widgets/images/rounded_image.dart';
import 'package:ecommerece/features/shop/controllers/home_controller.dart';
import 'package:ecommerece/utils/constants/colors.dart';
import 'package:ecommerece/utils/constants/image_string.dart';
import 'package:ecommerece/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EPromoSlider extends StatelessWidget {
  const EPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1.4,
              autoPlay: true,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
              aspectRatio: 1.4),
          items: banners.map((url) => ERoundedImage(imageUrl: url)).toList()
        ),
        const SizedBox(
          height: ESizes.spaceBtwItem,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                CustomShape(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  color: controller.carousalCurrentIndex.value == i
                      ? Ecolors.primary
                      : Ecolors.grey,
                )
            ],
          ),
        )
      ],
    );
  }
}
