import 'package:ecommerece/common/widgets/image_text_widget/vertical_cat_scroll.dart';
import 'package:ecommerece/utils/constants/image_string.dart';
import 'package:flutter/material.dart';

class EHomeCategory extends StatelessWidget {
  const EHomeCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 9,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return EvertscrollCat(
            image: EImage.shoeIcon,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
